<?php

namespace App\Http\Livewire\Communicatio;

use App\Http\Traits\WithModal;
use App\Models\Communicatio;
use Illuminate\Support\Facades\Auth;
use Livewire\Component;
use Livewire\WithPagination;

class Index extends Component
{
    use WithPagination, WithModal;

    public $communicatio;
    public $searchTerm = '';

    protected $paginationTheme = 'bootstrap';

    protected $searchColumns = ['id','title','content',];

    protected $listeners = ['update', 'openDestroy', 'destroy'];


	 public $title;
	 public $content;

    public function render()
    {
        $searchTerm = "%$this->searchTerm%";

        $communicatios = Communicatio::query();

        if (strlen($this->searchTerm) > 0) {
            $communicatios = $communicatios->where(function ($query) use ($searchTerm) {
                foreach ($this->searchColumns as $column) {
                    $query->orwhere($column, 'like', $searchTerm);
                }
            });
        }

        $communicatios = $communicatios->latest()->paginate(8);

        return view('livewire.communicatios.index', ['communicatios' => $communicatios]);
    }

    public function create()
    {
        $this->communicatio = null;
        $this->resetErrorBag();
        $this->emit('openModal');
        $this->resetInputs();
    }

    public function update(Communicatio $communicatio)
    {
        $this->communicatio = $communicatio;
        $this->resetErrorBag();
        $this->emit('openModal');
        $this->resetInputs($communicatio);
    }

    public function openDestroy(Communicatio $communicatio)
    {
        $this->communicatio = $communicatio;
        $this->emit('openDestroyModal');
    }

    public function destroy()
    {
        $this->communicatio->delete();
        $this->emit('toast-success', 'Communicatio removida(o) com sucesso');
        $this->emit('closeDestroyModal');
    }

    public function closeModal()
    {
        $this->emit('closeModal');
    }

    public function store()
    {
        $data = $this->validate($this->rules());

        isset($this->communicatio)
            ? $this->communicatio->update($data)
            : Communicatio::create($data);

        $this->closeModal();
        $this->emit('toast-success', isset($this->communicatio)
            ? 'Communicatio atualizada(o)'
            : 'Communicatio criada(o)');
    }

    private function resetInputs(Communicatio $communicatio = null)
    {

        $this->title = $communicatio->title ??'';
        $this->content = $communicatio->content ??'';
        $this->user_id = Auth::user()->id ?? '';

        $this->emit('clear-input');
    }

    public function rules()
    {
        return [
            'title' => 'string|required',
			'content' => 'string|required',
            'user_id' => 'required|integer'
        ];
    }

}
