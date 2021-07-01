<?php

namespace App\Http\Livewire\Course;

use App\Http\Traits\WithModal;
use App\Models\Course;
use Livewire\Component;
use Livewire\WithPagination;

class Index extends Component
{
    use WithPagination, WithModal;

    public $course;
    public $searchTerm = '';

    protected $paginationTheme = 'bootstrap';

    protected $searchColumns = ['id','name','slug',];

    protected $listeners = ['update', 'openDestroy', 'destroy'];


	 public $name;
	 public $slug;

    public function render()
    {
        $searchTerm = "%$this->searchTerm%";

        $courses = Course::query();

        if (strlen($this->searchTerm) > 0) {
            $courses = $courses->where(function ($query) use ($searchTerm) {
                foreach ($this->searchColumns as $column) {
                    $query->orwhere($column, 'like', $searchTerm);
                }
            });
        }

        $courses = $courses->latest()->paginate(8);

        return view('livewire.courses.index', ['courses' => $courses]);
    }

    public function create()
    {
        $this->course = null;
        $this->resetErrorBag();
        $this->emit('openModal');
        $this->resetInputs();
    }

    public function update(Course $course)
    {
        $this->course = $course;
        $this->resetErrorBag();
        $this->emit('openModal');
        $this->resetInputs($course);
    }

    public function openDestroy(Course $course)
    {
        $this->course = $course;
        $this->emit('openDestroyModal');
    }

    public function destroy()
    {
        $this->course->delete();
        $this->emit('toast-success', 'Course removida(o) com sucesso');
        $this->emit('closeDestroyModal');
    }

    public function closeModal()
    {
        $this->emit('closeModal');
    }

    public function store()
    {
        $data = $this->validate($this->rules());

        isset($this->course)
            ? $this->course->update($data)
            : Course::create($data);

        $this->closeModal();
        $this->emit('toast-success', isset($this->course)
            ? 'Course atualizada(o)'
            : 'Course criada(o)');
    }

    private function resetInputs(Course $course = null)
    {

        $this->name = $course->name ??'';
        $this->slug = $course->slug ??'';

        $this->emit('clear-input');
    }

    public function rules()
    {
        return [
            'name' => 'string|required',
			'slug' => 'string|required',
        ];
    }

}
