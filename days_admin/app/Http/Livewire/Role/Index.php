<?php

namespace App\Http\Livewire\Role;

use App\Http\Traits\WithModal;
use App\Models\Role;
use Livewire\Component;
use Livewire\WithPagination;

class Index extends Component
{
    use WithPagination, WithModal;

    public $role;
    public $searchTerm = '';

    protected $paginationTheme = 'bootstrap';

    protected $searchColumns = ['id', 'name'];

    protected $listeners = ['update', 'openDestroy', 'destroy'];

    public $name;

    public function render()
    {
        $searchTerm = "%$this->searchTerm%";

        $roles = Role::query();

        if (strlen($this->searchTerm) > 0) {
            $roles = $roles->where(function ($query) use ($searchTerm) {
                foreach ($this->searchColumns as $column) {
                    $query->orwhere($column, 'like', $searchTerm);
                }
            });
        }

        $roles = $roles->latest()->paginate(8);

        return view('livewire.roles.index', [
            'roles' => $roles,
        ]);
    }

    public function create()
    {
        $this->role = null;
        $this->resetErrorBag();
        $this->emit('openModal');
        $this->resetInputs();
    }

    public function update(Role $role)
    {
        $this->role = $role;
        $this->resetErrorBag();
        $this->emit('openModal');
        $this->resetInputs($role);
    }

    public function openDestroy(Role $role)
    {
        $this->role = $role;
        $this->emit('openDestroyModal');
    }

    public function destroy()
    {
        $this->role->delete();
        $this->emit('toast-success', 'Cargo removido com sucesso');
        $this->emit('closeDestroyModal');
    }

    public function closeModal()
    {
        $this->emit('closeModal');
    }

    public function store()
    {
        $data = $this->validate($this->rules());

        isset($this->role) ? $this->role->update($data) : Role::create($data);

        $this->closeModal();
        $this->emit(
            'toast-success',
            isset($this->role) ? 'Cargo atualizado' : 'Cargo criado'
        );
    }

    private function resetInputs(Role $role = null)
    {
        $this->name = $role->name ?? '';

        $this->emit('clear-input');
    }

    public function rules()
    {
        return [
            'name' => 'string|required',
        ];
    }
}
