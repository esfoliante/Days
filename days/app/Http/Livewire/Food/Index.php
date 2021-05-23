<?php

namespace App\Http\Livewire\Food;

use App\Http\Traits\WithModal;
use App\Models\Food;
use Livewire\Component;
use Livewire\WithPagination;

class Index extends Component
{
    use WithPagination;

    public $food;
    public $searchTerm = '';

    protected $paginationTheme = 'tailwind';

    protected $searchColumns = ['name'];

    protected $listeners = ['update', 'openDestroy', 'destroy'];

    public $name;

    public $isOpen = false;
    //  public $isDestroyOpen = false;

    public function render()
    {
        $searchTerm = "%$this->searchTerm%";

        /*$subjects = Subject::query();

        if (strlen($this->searchTerm) > 0) {
            $subjects = $subjects->where(function ($query) use ($searchTerm) {
                foreach ($this->searchColumns as $column) {
                    $query->orwhere($column, 'like', $searchTerm);
                }
            });
        }

        $subjects = $subjects->latest()->paginate(10);*/

        return view('livewire.food.index');
    }

    public function create()
    {
        $this->food = null;
        $this->resetErrorBag();
        $this->isOpen = true;
        $this->resetInputs();
    }

    public function update(Food $food)
    {
        $this->food = $food;
        $this->resetErrorBag();
        $this->isOpen = true;
        $this->resetInputs($subject);
    }

    public function openDestroy(Food $food)
    {
        $this->food = $food;
        $this->emit('openDestroyModal');
    }

    public function destroy()
    {
        $this->food->delete();
        $this->emit('toast-success', 'Disciplina removida com sucesso');
        $this->emit('closeDestroyModal');
    }

    public function closeModal()
    {
        $this->isOpen = false;
    }

    public function store()
    {
        $data = $this->validate($this->rules());

        isset($this->food) ? $this->food->update($data) : Food::create($data);

        $this->closeModal();
        $this->emit(
            'toast-success',
            isset($this->subject)
                ? 'Disciplina atualizada'
                : 'Disciplina criada'
        );
    }

    private function resetInputs(Food $food = null)
    {
        $this->name = $food->name ?? '';
        $this->emit('clear-input');
    }

    public function rules()
    {
        return [
            'name' => 'string|required|max:255',
        ];
    }
}
