<div>
    <footer id="footer">
		<div class="wrap-footer-content footer-style-1">

			<div class="wrap-function-info">
				<div class="container">
					<ul>
						<li class="fc-info-item">
							<i class="fa fa-truck" aria-hidden="true"></i>
							<div class="wrap-left-info">
								<h4 class="fc-name">Pengiriman</h4>
								<p class="fc-desc">Aman dan Terjamin</p>
							</div>

						</li>
						<li class="fc-info-item">
							<i class="fa fa-recycle" aria-hidden="true"></i>
							<div class="wrap-left-info">
								<h4 class="fc-name">Pengembalian</h4>
								<p class="fc-desc">Lebih Dari 7 Hari Barang Kembali</p>
							</div>

						</li>
						<li class="fc-info-item">
							<i class="fa fa-credit-card-alt" aria-hidden="true"></i>
							<div class="wrap-left-info">
								<h4 class="fc-name">Pembayaran</h4>
								<p class="fc-desc">Terjamin Aman</p>
							</div>

						</li>
						<li class="fc-info-item">
							<i class="fa fa-life-ring" aria-hidden="true"></i>
							<div class="wrap-left-info">
								<h4 class="fc-name">Dukungan Pengguna</h4>
								<p class="fc-desc">Melayani 24 jam</p>
							</div>

						</li>
					</ul>
				</div>
			</div>
			<!--End function info-->

			<div class="main-footer-content">

				<div class="container">

					<div class="row">

						<div class="col-lg-4 col-sm-4 col-md-4 col-xs-12">
							<div class="wrap-footer-item">
								<h3 class="item-header">Kontak</h3>
								<div class="item-content">
									<div class="wrap-contact-detail">
										<ul>
											<li>
												<i class="fa fa-map-marker" aria-hidden="true"></i>
												<p class="contact-txt">{{ $setting->address }}</p>
											</li>
											<li>
												<i class="fa fa-phone" aria-hidden="true"></i>
												<p class="contact-txt">{{ $setting->phone }}</p>
											</li>
											<li>
												<i class="fa fa-envelope" aria-hidden="true"></i>
												<p class="contact-txt">{{ $setting->email }}</p>
											</li>											
										</ul>
									</div>
								</div>
							</div>
						</div>

						<div class="col-lg-4 col-sm-4 col-md-4 col-xs-12">

							<div class="wrap-footer-item">
								<h3 class="item-header">Call Center</h3>
								<div class="item-content">
									<div class="wrap-hotline-footer">
										<span class="desc">Panggilan Pengguna</span>
										<b class="phone-number">{{ $setting->phone2 }}</b>
									</div>
								</div>
							</div>

							{{-- <div class="wrap-footer-item footer-item-second">
								<h3 class="item-header">Sign up for newsletter</h3>
								<div class="item-content">
									<div class="wrap-newletter-footer">
										<form action="#" class="frm-newletter" id="frm-newletter">
											<input type="email" class="input-email" name="email" value="" placeholder="Enter your email address">
											<button class="btn-submit">Subscribe</button>
										</form>
									</div>
								</div>
							</div> --}}
						</div>

						<div class="col-lg-4 col-sm-4 col-md-4 col-xs-12">
							<div class="wrap-footer-item">
								<h3 class="item-header">Media Sosial</h3>
								<div class="item-content">
									<div class="wrap-list-item social-network">
										<ul>
											<li><a href="{{ $setting->twitter }}" class="link-to-item" title="twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
											<li><a href="{{ $setting->facebook }}" class="link-to-item" title="facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
											<li><a href="{{ $setting->pinterest }}" class="link-to-item" title="pinterest"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
											<li><a href="{{ $setting->instagram }}" class="link-to-item" title="instagram"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
											<li><a href="{{ $setting->youtube }}" class="link-to-item" title="youtube"><i class="fa fa-youtube" aria-hidden="true"></i></a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>

						{{-- <div class="col-lg-4 col-sm-4 col-md-4 col-xs-12 box-twin-content ">
							<div class="row">
								<div class="wrap-footer-item twin-item">
									<h3 class="item-header">My Account</h3>
									<div class="item-content">
										<div class="wrap-vertical-nav">
											<ul>
												<li class="menu-item"><a href="#" class="link-term">My Account</a></li>
												<li class="menu-item"><a href="#" class="link-term">Brands</a></li>
												<li class="menu-item"><a href="#" class="link-term">Gift Certificates</a></li>
												<li class="menu-item"><a href="#" class="link-term">Affiliates</a></li>
												<li class="menu-item"><a href="#" class="link-term">Wish list</a></li>
											</ul>
										</div>
									</div>
								</div>
								<div class="wrap-footer-item twin-item">
									<h3 class="item-header">Infomation</h3>
									<div class="item-content">
										<div class="wrap-vertical-nav">
											<ul>
												<li class="menu-item"><a href="#" class="link-term">Contact Us</a></li>
												<li class="menu-item"><a href="#" class="link-term">Returns</a></li>
												<li class="menu-item"><a href="#" class="link-term">Site Map</a></li>
												<li class="menu-item"><a href="#" class="link-term">Specials</a></li>
												<li class="menu-item"><a href="#" class="link-term">Order History</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div> --}}

					</div>

					{{-- <div class="row">

						<div class="col-lg-4 col-sm-4 col-md-4 col-xs-12">
							<div class="wrap-footer-item">
								<h3 class="item-header">We Using Safe Payments:</h3>
								<div class="item-content">
									<div class="wrap-list-item wrap-gallery">
										<img src="assets/images/payment.png" style="max-width: 260px;">
									</div>
								</div>
							</div>
						</div>
						

						<div class="col-lg-4 col-sm-4 col-md-4 col-xs-12">
							<div class="wrap-footer-item">
								<h3 class="item-header">Dowload App</h3>
								<div class="item-content">
									<div class="wrap-list-item apps-list">
										<ul>
											<li><a href="#" class="link-to-item" title="our application on apple store"><figure><img src="assets/images/brands/apple-store.png" alt="apple store" width="128" height="36"></figure></a></li>
											<li><a href="#" class="link-to-item" title="our application on google play store"><figure><img src="assets/images/brands/google-play-store.png" alt="google play store" width="128" height="36"></figure></a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>

					</div> --}}
				</div>				
			</div>

			<div class="coppy-right-box">
				<div class="container">
					<div class="coppy-right-item item-left">
						<p class="coppy-right-text">Copyright © 2021 Clambee.inc</p>
					</div>
					<div class="coppy-right-item item-right">
						<div class="wrap-nav horizontal-nav">
							<ul>																
								<li class="menu-item"><a href="/privacy-policy" class="link-term">Privacy Policy</a></li>
								<li class="menu-item"><a href="/terms-condition" class="link-term">Syarat dan Ketentuan</a></li>
								<li class="menu-item"><a href="/return-policy" class="link-term">Return Policy</a></li>								
							</ul>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</footer>
</div>
