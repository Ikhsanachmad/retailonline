<main id="main" class="main-site">   

    <div class="container">

        <div class="wrap-breadcrumb">
            <ul>
                <li class="item-link"><a href="/" class="link">home</a></li>
                <li class="item-link"><span>Checkout</span></li>
            </ul>
        </div>
        <div class=" main-content-area">
            <form wire:submit.prevent="placeOrder" onsubmit="$('#tunggu').show();">
            <div class="row">
                <div class="col-md-12">
                    <div class="wrap-address-billing">
                        <h3 class="box-title">Alamat Pembayaran</h3>
                        <div class="billing-address">
                            <p class="row-in-form">
                                <label for="fname">Nama Depan<span>*</span></label>
                                <input type="text" name="fname" value="" placeholder="Your name" wire:model="firstname">
                                @error('firstname') <span class="text-danger">{{ $message }}</span>@enderror                                                            
                            </p>
                            <p class="row-in-form">
                                <label for="lname">Nama Akhir<span>*</span></label>
                                <input type="text" name="lname" value="" placeholder="Your last name" wire:model="lastname">
                                @error('lastname') <span class="text-danger">{{ $message }}</span>@enderror
                            </p>
                            <p class="row-in-form">
                                <label for="email">Email:</label>
                                <input type="email" name="email" value="" placeholder="Type your email" wire:model="email">
                                @error('email') <span class="text-danger">{{ $message }}</span>@enderror
                            </p>
                            <p class="row-in-form">
                                <label for="phone">No Ponsel<span>*</span></label>
                                <input type="number" name="phone" value="" placeholder="12 digits format" wire:model="mobile">
                                @error('mobile') <span class="text-danger">{{ $message }}</span>@enderror
                            </p>
                            <p class="row-in-form">
                                <label for="add">Alamat:</label>
                                <input type="text" name="add" value="" placeholder="Street at apartment number" wire:model="line1">
                                @error('line1') <span class="text-danger">{{ $message }}</span>@enderror
                            </p>
                            <p class="row-in-form">
                                <label for="add">Alamat Lainnya:</label>
                                <input type="text" name="add" value="" placeholder="Street at apartment number" wire:model="line2">
                                @error('line2') <span class="text-danger">{{ $message }}</span>@enderror
                            </p>
                            {{-- <p class="row-in-form">
                                <label for="country">Country<span>*</span></label>
                                <input  type="text" name="country" value="" placeholder="Indonesia" wire:model="country">
                                @error('country') <span class="text-danger">{{ $message }}</span>@enderror
                            </p>                            --}}
                            <p class="row-in-form">
                                <label for="city">Provinsi<span>*</span></label>
                                <input type="text" name="province" value="" placeholder="province" wire:model="province">
                                @error('province') <span class="text-danger">{{ $message }}</span>@enderror
                            </p>
                            <p class="row-in-form">
                                <label for="city">Kota<span>*</span></label>
                                <input type="text" name="city" value="" placeholder="City name" wire:model="city">
                                @error('city') <span class="text-danger">{{ $message }}</span>@enderror
                            </p>
                            <p class="row-in-form">
                                <label for="zip-code">Kode Pos:</label>
                                <input type="number" name="zip-code" value="" placeholder="Your postal code" wire:model="zipcode">
                                @error('zipcode') <span class="text-danger">{{ $message }}</span>@enderror
                            </p>
                            <p class="row-in-form fill-wife">                        
                                <label class="checkbox-field">
                                    <input name="different-add" id="different-add" value="1" type="checkbox" wire:model="ship_to_different">
                                    <span>Alamat pengiriman lainnya</span>
                                </label>
                            </p>
                        </div>
                    </div>
                </div>
                @if ($ship_to_different)                                    
                    <div class="col-md-12">
                        <div class="wrap-address-billing">
                            <h3 class="box-title">Shipping Address</h3>
                            <div class="billing-address">
                                <p class="row-in-form">
                                    <label for="fname">first name<span>*</span></label>
                                    <input type="text" name="fname" value="" placeholder="Your name" wire:model="s_firstname">
                                    @error('s_firstname') <span class="text-danger">{{ $message }}</span>@enderror
                                </p>
                                <p class="row-in-form">
                                    <label for="lname">last name<span>*</span></label>
                                    <input type="text" name="lname" value="" placeholder="Your last name" wire:model="s_lastname">
                                    @error('s_lastname') <span class="text-danger">{{ $message }}</span>@enderror
                                </p>
                                <p class="row-in-form">
                                    <label for="email">Email Addreess:</label>
                                    <input type="email" name="email" value="" placeholder="Type your email" wire:model="s_email">
                                    @error('s_email') <span class="text-danger">{{ $message }}</span>@enderror
                                </p>
                                <p class="row-in-form">
                                    <label for="phone">Phone number<span>*</span></label>
                                    <input type="number" name="phone" value="" placeholder="12 digits format" wire:model="s_mobile">
                                    @error('s_mobile') <span class="text-danger">{{ $message }}</span>@enderror
                                </p>
                                <p class="row-in-form">
                                    <label for="add">line1:</label>
                                    <input type="text" name="add" value="" placeholder="Street at apartment number" wire:model="s_line1">
                                    @error('s_line1') <span class="text-danger">{{ $message }}</span>@enderror
                                </p>
                                <p class="row-in-form">
                                    <label for="add">line2:</label>
                                    <input type="text" name="add" value="" placeholder="Street at apartment number" wire:model="s_line2">
                                    @error('s_line2') <span class="text-danger">{{ $message }}</span>@enderror
                                </p>
                                <p class="row-in-form">
                                    <label for="country">Country<span>*</span></label>
                                    <input  type="text" name="country" value="" placeholder="Indonesia" wire:model="s_country">
                                    @error('s_country') <span class="text-danger">{{ $message }}</span>@enderror
                                </p>                                
                                <p class="row-in-form">
                                    <label for="city">Province<span>*</span></label>
                                    <input type="text" name="province" value="" placeholder="province" wire:model="s_province">
                                    @error('s_province') <span class="text-danger">{{ $message }}</span>@enderror
                                </p>
                                <p class="row-in-form">
                                    <label for="city">Town / City<span>*</span></label>
                                    <input type="text" name="city" value="" placeholder="City name" wire:model="s_city">
                                    @error('s_city') <span class="text-danger">{{ $message }}</span>@enderror
                                </p>
                                <p class="row-in-form">
                                    <label for="zip-code">Postcode / ZIP:</label>
                                    <input type="number" name="zip-code" value="" placeholder="Your postal code" wire:model="s_zipcode">
                                    @error('s_zipcode') <span class="text-danger">{{ $message }}</span>@enderror
                                </p>                          
                            </div>
                        </div>
                    </div>
                @endif 
            </div>
            
            <div class="summary summary-checkout">
                <div class="summary-item payment-method">
                    <h4 class="title-box">Metode Pembayaran</h4>
                    @if($paymentmode == 'card')
                    <div class="form-group">                        
                        <p class="row-in-form">
                            <label for="card-no">Rekening 1234-456-789-01s </label>
                            <label for="card-no">Penting </label>
                            <label for="card-no">- Transfer tepat hingga 3 digit terakhir </label>
                            {{-- <input type="text" name="card-no" value="" placeholder="Nomor Rekening" wire:model="card_no"> --}}
                            @error('card_no') <span class="text-danger">{{ $message }}</span>@enderror
                        </p>                       
                    </div>
                    @endif       
                    <div class="choose-payment-methods">
                        <label class="payment-method">
                            <input name="payment-method" id="payment-method-bank" value="cod" type="radio" wire:model="paymentmode">
                            <span>Cash On Delivery</span>
                            <span class="payment-desc">Bayar Sesuai Dengan Total Pembayaran</span>
                        </label>
                        <label class="payment-method">
                            <input name="payment-method" id="payment-method-visa" value="card" type="radio" wire:model="paymentmode">
                            <span>Kartu Debit / Kredit</span>
                            {{-- <span class="payment-desc">There are many variations of passages of Lorem Ipsum available</span> --}}
                        </label>
                        @error('paymentmode') <span class="text-danger">{{ $message }}</span>@enderror
                        {{-- <label class="payment-method">
                            <input name="payment-method" id="payment-method-paypal" value="paypal" type="radio">
                            <span>Paypal</span>
                            <span class="payment-desc">You can pay with your credit</span>
                            <span class="payment-desc">card if you don't have a paypal account</span>
                        </label> --}}
                    </div>
                    @if (Session::has('checkout'))
                        <p class="summary-info grand-total"><span>Total</span><span class="grand-total-price">Rp{{ session::get('checkout')['total']}}</span></p>
                        <h5 class="box-title"><span>Kode Unik    Rp{{ session::get('checkout')['kodeunik']}}</span></h5>
                     @endif 
                    
                    @if ($errors->isempty())
                        <div wire:ignore id="tunggu" style="font-size: 22px; margin-bottom:20px; padding-left: 37px; color: green; display:none;">
                            <i class="fa fa-spinner fa-pulse fa-fw"></i>
                            <span>Tunggu Sebentar.....</span>
                        </div>
                    @endif                    

                    <button type="submit" class="btn btn-medium">Pesan Sekarang</button>                                                       
                </div>
                {{-- <div class="summary-item shipping-method">
                    <h4 class="title-box f-title">Metode Pengirim</h4>
                    <p class="summary-info"><span class="title">Flat Rate</span></p>
                    <p class="summary-info"><span class="title">Fixed Rp0</span></p>                    
                </div> --}}
            </div>
            </form>
        </div><!--end main content area-->
    </div><!--end container-->

</main>