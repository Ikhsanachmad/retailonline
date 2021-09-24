<?php

namespace App\Http\Livewire;

use App\Models\Product;
use Livewire\Component;
use Livewire\WithPagination;
use Cart;
use App\Models\Category; 

class SearchComponent extends Component
{
    public $sorting;
    public $pagesize;
    
    public $search;
    public $product_cat;
    public $product_cat_id;

    public $min_price;
    public $max_price;

    public function mount()
    {
        $this->sorting="default";
        $this->pagesize= 5;
        $this->fill(request()->only('search','product_cat','product_cat_id'));

        $this->min_price = 1;
        $this->max_price = 1000;
    }
    public function store($product_id,$product_name,$product_price)
    {
        Cart::add($product_id,$product_name,1,$product_price)->associate('App\Models\Product');
        session()->flash('success_message','Item added in Cart');
        return redirect()->route('product.cart');
    }

    public function addToWishlist($product_id,$product_name,$product_price)
    {
        Cart::instance('wishlist')->add($product_id,$product_name,1,$product_price)->associate('App\Models\Product');
        $this->emitTo('wishlist-count-component','refreshComponent');
         
    }

    public function removeFromWishlist($product_id)
    {
        foreach(Cart::instance('wishlist')->content() as $witems)
        {
            if($witems->id == $product_id)
            {
                Cart::instance('wishlist')->remove($witems->rowId);
                $this->emitTo('wishlist-count-component','refreshComponent');
                return;
            }
        }
    }
    
    use WithPagination;
    public function render()
    {
        if($this->sorting=='date')
        {
            $products = Product::where('name','like','%'.$this->search .'%')->where('category_id','like','%'.$this->product_cat_id.'%')->orderBy('created_at','DESC')->paginate($this->pagesize);
        } 
        else if($this->sorting=="price")
        {
            $products = Product::where('name','like','%'.$this->search .'%')->where('category_id','like','%'.$this->product_cat_id.'%')->orderBy('regular_price','ASC')->paginate($this->pagesize);
        }
        elseif($this->sorting=="price-desc")
        {
            $products = Product::where('name','like','%'.$this->search .'%')->where('category_id','like','%'.$this->product_cat_id.'%')->orderBy('regular_price','DESC')->paginate($this->pagesize);
        }
        else {
            $products = Product::where('name','like','%'.$this->search .'%')->where('category_id','like','%'.$this->product_cat_id.'%')->paginate($this->pagesize);
        }

        $popular_products = Product::inRandomOrder()->limit(4)->get();
        $categories = Category::all();
        return view('livewire.search-component', ['products'=>$products,'categories'=>$categories, 'popular_products'=>$popular_products])->layout("layouts.base");
    }
}
