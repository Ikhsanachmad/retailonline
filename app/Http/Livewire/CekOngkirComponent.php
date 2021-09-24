<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Illuminate\Http\Request;

class CekOngkirComponent extends Component
{
    
    
    public function mount()
    {
       $this->product_cat  = 'All Category';
       $this->fill(request()->only('search','product_cat','product_cat_id'));
    }
    public function render()
    {
        $categories= Category::all();
        return view('livewire.header-search-component',['categories'=>$categories]);
    }
}
