<?php

namespace App\Http\Livewire\Schedule;

use App\Http\Traits\WithModal;
use App\Models\Schedule;
use Livewire\Component;
use Livewire\WithPagination;

class Index extends Component
{
    use WithPagination, WithModal;

    public $schedule;
    public $searchTerm = '';

    protected $paginationTheme = 'bootstrap';

    protected $searchColumns = ['id',];

    protected $listeners = ['update', 'openDestroy', 'destroy'];


	 public $class_id;

    public function render()
    {
        $searchTerm = "%$this->searchTerm%";

        $schedules = Schedule::query();

        if (strlen($this->searchTerm) > 0) {
            $schedules = $schedules->where(function ($query) use ($searchTerm) {
                foreach ($this->searchColumns as $column) {
                    $query->orwhere($column, 'like', $searchTerm);
                }
            });
        }

        $schedules = $schedules->latest()->paginate(8);

        return view('livewire.schedules.index', ['schedules' => $schedules]);
    }

    public function create()
    {
        $this->schedule = null;
        $this->resetErrorBag();
        $this->emit('openModal');
        $this->resetInputs();
    }

    public function update(Schedule $schedule)
    {
        $this->schedule = $schedule;
        $this->resetErrorBag();
        $this->emit('openModal');
        $this->resetInputs($schedule);
    }

    public function openDestroy(Schedule $schedule)
    {
        $this->schedule = $schedule;
        $this->emit('openDestroyModal');
    }

    public function destroy()
    {
        $this->schedule->delete();
        $this->emit('toast-success', 'Schedule removida(o) com sucesso');
        $this->emit('closeDestroyModal');
    }

    public function closeModal()
    {
        $this->emit('closeModal');
    }

    public function store()
    {
        $data = $this->validate($this->rules());

        isset($this->schedule)
            ? $this->schedule->update($data)
            : Schedule::create($data);

        $this->closeModal();
        $this->emit('toast-success', isset($this->schedule)
            ? 'Schedule atualizada(o)'
            : 'Schedule criada(o)');
    }

    private function resetInputs(Schedule $schedule = null)
    {

			$this->class_id = '';
		if($schedule) {
			$this->emit('changeInput', ['id' => 'class_id', 'value' => $schedule->class_id]);
			}
        $this->emit('clear-input');
    }

    public function rules()
    {
        return [
            'class_id' => 'integer',
        ];
    }

}
