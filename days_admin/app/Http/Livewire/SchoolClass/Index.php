<?php

namespace App\Http\Livewire\SchoolClass;

use App\Http\Traits\WithModal;
use App\Models\SchoolClass;
use Livewire\Component;
use Livewire\WithPagination;

class Index extends Component
{
    use WithPagination, WithModal;

    public $schoolclass;
    public $searchTerm = '';

    protected $paginationTheme = 'bootstrap';

    protected $searchColumns = ['id','name','year',];

    protected $listeners = ['update', 'openDestroy', 'destroy'];


	 public $name;
	 public $year;
	 public $course_id;

    public function render()
    {
        $searchTerm = "%$this->searchTerm%";

        $schoolclasses = SchoolClass::query();

        if (strlen($this->searchTerm) > 0) {
            $schoolclasses = $schoolclasses->where(function ($query) use ($searchTerm) {
                foreach ($this->searchColumns as $column) {
                    $query->orwhere($column, 'like', $searchTerm);
                }
            });
        }

        $schoolclasses = $schoolclasses->latest()->paginate(8);

        return view('livewire.schoolclasses.index', ['schoolclasses' => $schoolclasses]);
    }

    public function create()
    {
        $this->schoolclass = null;
        $this->resetErrorBag();
        $this->emit('openModal');
        $this->resetInputs();
    }

    public function update(SchoolClass $schoolclass)
    {
        $this->schoolclass = $schoolclass;
        $this->resetErrorBag();
        $this->emit('openModal');
        $this->resetInputs($schoolclass);
    }

    public function openDestroy(SchoolClass $schoolclass)
    {
        $this->schoolclass = $schoolclass;
        $this->emit('openDestroyModal');
    }

    public function destroy()
    {
        $this->schoolclass->delete();
        $this->emit('toast-success', 'School Class removida(o) com sucesso');
        $this->emit('closeDestroyModal');
    }

    public function closeModal()
    {
        $this->emit('closeModal');
    }

    public function store()
    {
        $data = $this->validate($this->rules());

        isset($this->schoolclass)
            ? $this->schoolclass->update($data)
            : SchoolClass::create($data);

        $this->closeModal();
        $this->emit('toast-success', isset($this->schoolclass)
            ? 'School Class atualizada(o)'
            : 'School Class criada(o)');
    }

    private function resetInputs(SchoolClass $schoolclass = null)
    {

			$this->name = $schoolclass->name ??'';
			$this->year = $schoolclass->year ??0;
			$this->course_id = '';
		if($schoolclass) {
			$this->emit('changeInput', ['id' => 'course_id', 'value' => $schoolclass->course_id]);
			}
        $this->emit('clear-input');
    }

    public function rules()
    {
        return [
            'name' => 'string|required',
			'year' => 'required|required',
			'course_id' => 'integer',
        ];
    }

}
