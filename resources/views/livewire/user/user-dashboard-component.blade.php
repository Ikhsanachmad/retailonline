<div>
   <div class="container" style="padding: 30px 0;">
       <div class="row">         
            <div class="col-md-12" >
               <div class="panel panel-default">
                   <div class="panel-heading">
                       Profil Pengguna
                   </div>
                     <div class="panel-body">
                        @if (Session::has('profile_success'))
                           <div class="alert alert-success" role="alert">{{ Session::get('profile_success')}}</div>
                        @endif                       
                       <form class="form-horizontal" wire:submit.prevent="changeProfile">
                        <div class="form-group">
                           <label for="state.email" class="col-md-4 control-label">Username</label>
                           <div class="col-md-4">
                           <input type="text" class="form-control" value="{{ Auth::user()->name }}"  wire:model="name"/>
                           </div>
                       </div>
       
                       <div class="form-group">
                           <label for="state.email" class="col-md-4 control-label">Email</label>
                           <div class="col-md-4">
                           <input type="email" class="form-control" value="{{ Auth::user()->email }}"  wire:model="email"/>
                           </div>
                       </div>                       
                           <div class="form-group">
                               <label class="col-md-4 control-label"></label>
                               <div class="col-md-4">
                                   <button type="submit" class="btn btn-primary">Simpan</button>
                               </div>
                           </div>
                       </form>
                     </div>
               </div>
           </div>       
       </div>
   </div>
</div>
