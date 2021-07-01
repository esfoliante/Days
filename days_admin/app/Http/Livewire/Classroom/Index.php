<?php

namespace App\Http\Livewire\Classroom;

use App\Http\Traits\WithModal;
use App\Models\Classroom;
use Livewire\Component;
use Livewire\WithPagination;

class Index extends Component
{
    use WithPagination, WithModal;

    public $classroom;
    public $searchTerm = '';

    protected $paginationTheme = 'bootstrap';

    protected $searchColumns = ['id','department','floor','number',];

    protected $listeners = ['update', 'openDestroy', 'destroy'];


	 public $department;
	 public $floor;
	 public $number;

    public function render()
    {
        $searchTerm = "%$this->searchTerm%";

        $classrooms = Classroom::query();

        if (strlen($this->searchTerm) > 0) {
            $classrooms = $classrooms->where(function ($query) use ($searchTerm) {
                foreach ($this->searchColumns as $column) {
                    $query->orwhere($column, 'like', $searchTerm);
                }
            });
        }

        $classrooms = $classrooms->latest()->paginate(8);

        return view('livewire.classrooms.index', ['classrooms' => $classrooms]);
    }

    public function create()
    {
        $this->classroom = null;
        $this->resetErrorBag();
        $this->emit('openModal');
        $this->resetInputs();
    }

    public function update(Classroom $classroom)
    {
        $this->classroom = $classroom;
        $this->resetErrorBag();
        $this->emit('openModal');
        $this->resetInputs($classroom);
    }

    public function openDestroy(Classroom $classroom)
    {
        $this->classroom = $classroom;
        $this->emit('openDestroyModal');
    }

    public function destroy()
    {
        $this->classroom->delete();
        $this->emit('toast-success', 'Classroom removida(o) com sucesso');
        $this->emit('closeDestroyModal');
    }

    public function closeModal()
    {
        $this->emit('closeModal');
    }

    public function store()
    {
        $data = $this->validate($this->rules());

        isset($this->classroom)
            ? $this->classroom->update($data)
            : Classroom::create($data);

        $this->closeModal();
        $this->emit('toast-success', isset($this->classroom)
            ? 'Classroom atualizada(o)'
            : 'Classroom criada(o)');
    }

    private function resetInputs(Classroom $classroom = null)
    {

        $this->department = $classroom->department ??'';
        $this->floor = $classroom->floor ??0;
        $this->number = $classroom->number ??0;

        $this->emit('clear-input');
    }

    public function rules()
    {
        return [
            'department' => 'string|required',
			'floor' => 'required',
			'number' => 'required',
        ];
    }

}
