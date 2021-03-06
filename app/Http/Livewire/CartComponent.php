<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Carbon\Carbon;
use App\Models\Coupon;
use App\Models\Product;
use Cart;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;
use App\Models\User;

class CartComponent extends Component
{
    public $haveCouponCode;
    public $couponCode;
    public $discount;
    public $subtotalAfterDiscount;
    public $taxAfterDiscount;
    public $totalAfterDiscount;
    public $generateUniqueCode;   
    public $kodeUnik;   
    

    public function increaseQuantity($rowId)
    {        
        $product = Cart::instance('cart')->get($rowId);
        $qty = $product->qty + 1;
        Cart::instance('cart')->update($rowId,$qty);
        $this->emitTo('cart-count-component','refreshComponent');
    }

    public function decreaseQuantity($rowId)
    {
        $product = Cart::instance('cart')->get($rowId);
        $qty = $product->qty - 1;
        Cart::instance('cart')->update($rowId,$qty);
        $this->emitTo('cart-count-component','refreshComponent');
    }

    public function destroy($rowId)
    {
        Cart::instance('cart')->remove($rowId);
        $this->emitTo('cart-count-component','refreshComponent');
        session()->flash('success_message','Item has been removed');
    }

    public function destroyAll()
    {
        Cart::instance('cart')->destroy();
        $this->emitTo('cart-count-component','refreshComponent');
    }
    
    public function switchToSaveForLater($rowId)
    {
        $item = Cart::instance('cart')->get($rowId);
        Cart::instance('cart')->remove($rowId);
        Cart::instance('saveForLater')->add($item->id,$item->name,1,$item->price)->associate('App\Models\Product');
        $this->emitTo('cart-count-component','refreshComponent');
        session()->flash('success_message','Item has been saved later');
    }

    public function moveToCart($rowId)
    {
        $item = Cart::instance('saveForLater')->get($rowId);
        Cart::instance('saveForLater')->remove($rowId);
        Cart::instance('cart')->add($item->id,$item->name,1,$item->price)->associate('App\Models\Product');
        $this->emitTo('cart-count-component','refreshComponent');
        session()->flash('s_success_message','Item has been moved to cart');
    }

    public function deletFromSaveForLater($rowId)
    {
        Cart::instance('saveForLater')->remove($rowId);
        session()->flash('s_success_message','Item has been remove save later');
    } 

    public function applyCouponCode()
    {
        $coupon = Coupon::where('code',$this->couponCode)->where('expiry_date','>=',Carbon::today())->where('cart_value','<=',Cart::instance('cart')->subtotal())->first();
        if(!$coupon)
        {
            session()->flash('coupon_message','Coupon invalid!');
            return;
        }

        session()->put('coupon',[
            'code' => $coupon->code,
            'type' => $coupon->type,
            'value' => $coupon->value,
            'cart_value' => $coupon->cart_value
        ]);
    }
    
    public function calculateDiscounts()
    {
        if(session()->has('coupon'))
        {
            if(session()->get('coupon')['type'] == 'fixed')
            {
                $this->discount = session()->get('coupon')['value'];
            }
            else
            {
                $this->discount = (Cart::instance('cart')->subtotal() * session()->get('coupon')['value'])/100;
            }
            $this->subtotalAfterDiscount = Cart::instance('cart')->subtotal() - $this->discount;
            $this->taxAfterDiscount = ($this->subtotalAfterDiscount * config('cart.tax'));
            $this->totalAfterDiscount = $this->subtotalAfterDiscount +$this->taxAfterDiscount;
            // $this->codeUnique = Cart::instance('cart')->codeuniq(mt_rand(100,999));         
            
        }
    }

    public function removeCoupon()
    {
        session()->forget('coupon');
    }

    public function checkout()
    {
        if(Auth::check())
        {
            return redirect()->route('checkout');
        }
        else
        {
            return redirect()->route('login');
        }
    }
    // public function generateUniqueCode()
    // {
    //     $z = 
    //     return $z;
    // }
    public function setAmountForCheckout()
    {
        $kodeUnik = random_int(100, 999); // generate kode unik
        $total = Cart::instance('cart')->total(); // menambil nilai total dari cart
        $total = (float) str_replace(['.', ','], ['', '.'], $total); // mengubah string menjadi float dengan str replate agar angka 000 (ribuan tetap terambil)
        $total = $total + $kodeUnik; // menambahkan nilai total dan kode unik
        $total = number_format($total); 
        $total = str_replace (',', '.', $total); // mengubah , (comma) menjadi . (dot)

        if(!Cart::instance('cart')->count() > 0)
        {
            session()->forget('checkout');
            return;
        }
        
        if(session()->has('coupon'))
        {
            session()->put('checkout',[
                'discount' => $this->discount,
                'subtotal' => $this->subtotalAfterDiscount,
                'tax' => $this->taxAfterDiscount,
                'total' =>   $this->totalAfterDiscount,
                'kodeunik' =>  $this->kodeUnik              
            ]);
        }
       
        else
        {
            session()->put('checkout',[
                'discount' => 0,
                'subtotal' => Cart::instance('cart')->subtotal(),
                'tax' => Cart::instance('cart')->tax(),
                'total' => $total,
                'kodeunik' => $kodeUnik              
            ]); 
        }
    }
    

    
    public function render()
    {
        // $kodeUnik = random_int(100, 999);
        // var_dump($kodeUnik);
        if(session()->has('coupon'))
        {
            if(Cart::instance('cart')->subtotal() < session()->get('coupon')['cart_value'])
            {
                session()->forget('coupon');
            }
            else {
                $this->calculateDiscounts();                
            }                                     
          
        }
        $this->setAmountForCheckout();

        if(Auth::check())
        {
            Cart::instance('cart')->store(Auth::user()->email);
        }
        $lproducts = Product::orderBy('created_at','DESC')->get()->take(8);
        return view('livewire.cart-component',['lproducts'=>$lproducts])->layout("layouts.base");
    }
}
