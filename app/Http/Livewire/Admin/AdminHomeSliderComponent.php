<?php

namespace App\Http\Livewire\Admin;

use App\models\HomeSlider;
use Livewire\Component;

class AdminHomeSliderComponent extends Component
{
    public function deleteSlide($slide_id)
    {
        $sliders = HomeSlider::find($slide_id);
        $sliders->delete();        
        session()->flash('message','Slide has been deleted successfull');
    }
    public function render()
    {
        $sliders = HomeSlider::all();
        return view('livewire.admin.admin-home-slider-component',['sliders'=>$sliders])->layout('layouts.base');
    }
}
