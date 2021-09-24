<?php

namespace App\Http\Livewire\User;

use Illuminate\Support\Facades\Hash;
use Livewire\Component;
use App\Models\User;
use Auth;

class UserDashboardComponent extends Component
{ 
    public $name;
    public $email;
    
    public function updated($fields)
    {
        $this->validateOnly($fields,[
            'name' => 'required',
            'email'  => 'required|email'
        ]);
    }

    public function changeProfile()
    {
        $this->validate([
            'name' => 'required',
            'email'  => 'required|email'     
        ]);
        
        if(Hash::check($this->name,Auth::user()->name))
        {
            $user = User::findOrFail(Auth::user()->id);
            $user->name = Hash::make($this->name);
            $user->email = Hash::make($this->email);
            $user->save();
            session()->flash('profile_success','Profil berhasil diganti');
        }       
    }
    public function render()
    {        
        return view('livewire.user.user-dashboard-component',)->layout('layouts.base');
    }
}
