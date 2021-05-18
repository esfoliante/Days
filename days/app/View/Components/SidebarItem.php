<?php

namespace App\View\Components;

use Illuminate\View\Component;

class SidebarItem extends Component
{


    /**
     * Create a new component instance.
     *
     * @return void
     */
    public function __construct(public $location, public $title)
    {
        //
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|string
     */
    public function render()
    {
        return view('components.sidebar-item');
    }
}
