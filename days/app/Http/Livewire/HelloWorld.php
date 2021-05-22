<?php

namespace App\Http\Livewire;

use Livewire\Component;

class HelloWorld extends Component
{
    public $message;

    public $bazinga = false;

    public function render()
    {
        return view('livewire.hello-world');
    }

    public function showBazinga($var)
    {
        $this->bazinga = $var;
    }
}
