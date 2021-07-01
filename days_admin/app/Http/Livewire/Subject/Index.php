<?php

namespace App\Http\Livewire\Subject;

use App\Http\Traits\WithModal;
use App\Models\Subject;
use Livewire\Component;
use Livewire\WithPagination;

class Index extends Component
{
    use WithPagination, WithModal;

    public $subject;
    public $searchTerm = '';

    protected $paginationTheme = 'bootstrap';

    protected $searchColumns = ['id','name',];

    protected $listeners = ['update', 'openDestroy', 'destroy'];


	 public $name;

    public function render()
    {
        $searchTerm = "%$this->searchTerm%";

        $subjects = Subject::query();

        if (strlen($this->searchTerm) > 0) {
            $subjects = $subjects->where(function ($query) use ($searchTerm) {
                foreach ($this->searchColumns as $column) {
                    $query->orwhere($column, 'like', $searchTerm);
                }
            });
        }

        $subjects = $subjects->latest()->paginate(8);

        return view('livewire.subjects.index', ['subjects' => $subjects]);
    }

    public function create()
    {
        $this->subject = null;
        $this->resetErrorBag();
        $this->emit('openModal');
        $this->resetInputs();
    }

    public function update(Subject $subject)
    {
        $this->subject = $subject;
        $this->resetErrorBag();
        $this->emit('openModal');
        $this->resetInputs($subject);
    }

    public function openDestroy(Subject $subject)
    {
        $this->subject = $subject;
        $this->emit('openDestroyModal');
    }

    public function destroy()
    {
        $this->subject->delete();
        $this->emit('toast-success', 'Subject removida(o) com sucesso');
        $this->emit('closeDestroyModal');
    }

    public function closeModal()
    {
        $this->emit('closeModal');
    }

    public function store()
    {
        $data = $this->validate($this->rules());

        isset($this->subject)
            ? $this->subject->update($data)
            : Subject::create($data);

        $this->closeModal();
        $this->emit('toast-success', isset($this->subject)
            ? 'Subject atualizada(o)'
            : 'Subject criada(o)');
    }

    private function resetInputs(Subject $subject = null)
    {

			$this->name = $subject->name ??'';
		if($subject) {
			}
        $this->emit('clear-input');
    }

    public function rules()
    {
        return [
            'name' => 'string|required',
        ];
    }

}
