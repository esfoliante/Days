<?php

namespace App\Http\Livewire\ParentModel;

use App\Http\Traits\WithModal;
use App\Models\ParentModel;
use Livewire\Component;
use Livewire\WithPagination;

class Index extends Component
{
    use WithPagination, WithModal;

    public $parentmodel;
    public $searchTerm = '';

    protected $paginationTheme = 'bootstrap';

    protected $searchColumns = ['id','name','email','contact','profession','cc','nif','residence',];

    protected $listeners = ['update', 'openDestroy', 'destroy'];


	 public $name;
	 public $email;
	 public $contact;
	 public $profession;
	 public $cc;
	 public $nif;
	 public $residence;

    public function render()
    {
        $searchTerm = "%$this->searchTerm%";

        $parentmodels = ParentModel::query();

        if (strlen($this->searchTerm) > 0) {
            $parentmodels = $parentmodels->where(function ($query) use ($searchTerm) {
                foreach ($this->searchColumns as $column) {
                    $query->orwhere($column, 'like', $searchTerm);
                }
            });
        }

        $parentmodels = $parentmodels->latest()->paginate(8);

        return view('livewire.parentmodels.index', ['parentmodels' => $parentmodels]);
    }

    public function create()
    {
        $this->parentmodel = null;
        $this->resetErrorBag();
        $this->emit('openModal');
        $this->resetInputs();
    }

    public function update(ParentModel $parentmodel)
    {
        $this->parentmodel = $parentmodel;
        $this->resetErrorBag();
        $this->emit('openModal');
        $this->resetInputs($parentmodel);
    }

    public function openDestroy(ParentModel $parentmodel)
    {
        $this->parentmodel = $parentmodel;
        $this->emit('openDestroyModal');
    }

    public function destroy()
    {
        $this->parentmodel->delete();
        $this->emit('toast-success', 'Parent Model removida(o) com sucesso');
        $this->emit('closeDestroyModal');
    }

    public function closeModal()
    {
        $this->emit('closeModal');
    }

    public function store()
    {
        $data = $this->validate($this->rules());

        isset($this->parentmodel)
            ? $this->parentmodel->update($data)
            : ParentModel::create($data);

        $this->closeModal();
        $this->emit('toast-success', isset($this->parentmodel)
            ? 'Parent Model atualizada(o)'
            : 'Parent Model criada(o)');
    }

    private function resetInputs(ParentModel $parentmodel = null)
    {

        $this->name = $parentmodel->name ??'';
        $this->email = $parentmodel->email ??'';
        $this->contact = $parentmodel->contact ??'';
        $this->profession = $parentmodel->profession ??'';
        $this->cc = $parentmodel->cc ??'';
        $this->nif = $parentmodel->nif ??'';
        $this->residence = $parentmodel->residence ??'';

        $this->emit('clear-input');
    }

    public function rules()
    {
        return [
            'name' => 'string|required',
			'email' => 'email|required',
			'contact' => 'string|required',
			'profession' => 'string|required',
			'cc' => 'string|required',
			'nif' => 'string|required|min:9',
			'residence' => 'string|required',
        ];
    }

}
