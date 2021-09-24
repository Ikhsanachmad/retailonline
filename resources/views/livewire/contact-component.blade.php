<div>
    <main id="main" class="main-site left-sidebar">

		<div class="container">

			<div class="wrap-breadcrumb">
				<ul>
					<li class="item-link"><a href="/" class="link">home</a></li>
					<li class="item-link"><span>Hunbungi Kami</span></li>
				</ul>
			</div>
			<div class="row">
				<div class=" main-content-area">
					<div class="wrap-contacts ">
						<div class="col-lg-6 col-sm-6 col-md-6 col-xs-12">
							<div class="contact-box contact-form">
								<h2 class="box-title">Mengirim Pesan</h2>
								@if (Session::has('message'))
									<div class="alert alert-success" role="alert">{{ Session::get('message') }}</div>
								@endif
								<form name="frm-contact" wire:submit.prevent="sendMessage">

									<label for="name">Nama<span>*</span></label>
									<input type="text" value="" id="name" name="name" wire:model="name">
									@error('name') <p class="taext-danger">{{ $message }}</p>@enderror

									<label for="email">Email<span>*</span></label>
									<input type="text" value="" id="email" name="email" wire:model="email">
									@error('email') <p class="taext-danger">{{ $message }}</p>@enderror

									<label for="phone">Nomer Ponsel</label>
									<input type="text" value="" id="phone" name="phone" wire:model="phone">
									@error('phone') <p class="taext-danger">{{ $message }}</p>@enderror

									<label for="comment">Komentar</label>
									<textarea name="comment" id="comment" wire:model="comment"></textarea>
									@error('comment') <p class="taext-danger">{{ $message }}</p>@enderror

									<input type="submit" name="ok" value="Kirim" >
									
								</form>
							</div>
						</div>
						<div class="col-lg-6 col-sm-6 col-md-6 col-xs-12">
							<div class="contact-box contact-info">
								<div class="wrap-map">
									<iframe src="{{ $setting->map }}" width="100%" height="320" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
								</div>
								<h2 class="box-title">Detail Kontak</h2>
								<div class="wrap-icon-box">

									<div class="icon-box-item">
										<i class="fa fa-envelope" aria-hidden="true"></i>
										<div class="right-info">
											<b>Email</b>
											<p>{{ $setting->email }}</p>
										</div>
									</div>

									<div class="icon-box-item">
										<i class="fa fa-phone" aria-hidden="true"></i>
										<div class="right-info">
											<b>Nomer Ponsel</b>
											<p>{{ $setting->phone }}</p>
										</div>
									</div>

									<div class="icon-box-item">
										<i class="fa fa-map-marker" aria-hidden="true"></i>
										<div class="right-info">
											<b>Alamat</b>
											<p>{{ $setting->address }}</p>
										</div>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div><!--end main products area-->

			</div><!--end row-->

		</div><!--end container-->

	</main>	
</div>
