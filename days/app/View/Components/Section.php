<?php

namespace App\View\Components;

use Illuminate\View\Component;

class Section extends Component
{

    /**
     * Create a new component instance.
     *
     * @return void
     */
    public function __construct(public $title, public $clickEvent, public $button_title = '')
    {

        $this->clickEvent = $clickEvent;

        if($button_title == '')
            $this->button_title = $this->title;

    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|string
     */
    public function render()
    {
        return view('components.section');
    }
}
