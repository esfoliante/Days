<?php

namespace App\Http\Livewire\AccMovement;

use App\Http\Traits\WithModal;
use App\Models\AccMovement;
use Livewire\Component;
use Livewire\WithPagination;

class Index extends Component
{
    use WithPagination, WithModal;

    public $accmovement;
    public $searchTerm = '';

    protected $paginationTheme = 'bootstrap';

    protected $searchColumns = ['id', 'amount', 'is_debt', 'location'];

    protected $listeners = ['update', 'openDestroy', 'destroy'];

    public $student_id;
    public $amount;
    public $is_debt;
    public $location;

    public function render()
    {
        $searchTerm = "%$this->searchTerm%";

        $accmovements = AccMovement::query();

        if (strlen($this->searchTerm) > 0) {
            $accmovements = $accmovements->where(function ($query) use (
                $searchTerm
            ) {
                foreach ($this->searchColumns as $column) {
                    $query->orwhere($column, 'like', $searchTerm);
                }
            });
        }

        $accmovements = $accmovements->latest()->paginate(8);

        return view('livewire.accmovements.index', [
            'accmovements' => $accmovements,
        ]);
    }

    public function create()
    {
        $this->accmovement = null;
        $this->resetErrorBag();
        $this->emit('openModal');
        $this->resetInputs();
    }

    public function update(AccMovement $accmovement)
    {
        $this->accmovement = $accmovement;
        $this->resetErrorBag();
        $this->emit('openModal');
        $this->resetInputs($accmovement);
    }

    public function openDestroy(AccMovement $accmovement)
    {
        $this->accmovement = $accmovement;
        $this->emit('openDestroyModal');
    }

    public function destroy()
    {
        $this->accmovement->delete();
        $this->emit('toast-success', 'Movimento de conta removido com sucesso');
        $this->emit('closeDestroyModal');
    }

    public function closeModal()
    {
        $this->emit('closeModal');
    }

    public function store()
    {
        $data = $this->validate($this->rules());

        isset($this->accmovement)
            ? $this->accmovement->update($data)
            : AccMovement::create($data);

        $this->closeModal();
        $this->emit(
            'toast-success',
            isset($this->accmovement)
                ? 'Movimento de conta atualizada(o)'
                : 'Movimento de conta criada(o)'
        );
    }

    private function resetInputs(AccMovement $accmovement = null)
    {
        $this->student_id = '';
        $this->amount = $accmovement->amount ?? 0;
        $this->is_debt = $accmovement->is_debt ?? '0';
        $this->location = $accmovement->location ?? '';
        if ($accmovement) {
            $this->emit('changeInput', [
                'id' => 'student_id',
                'value' => $accmovement->student_id,
            ]);
            $this->emit('changeInput', [
                'id' => 'is_debt',
                'value' => $accmovement->is_debt,
            ]);
        }
        $this->emit('clear-input');
    }

    public function rules()
    {
        return [
            'student_id' => 'integer',
            'amount' => 'required|max:6',
            'is_debt' => 'required',
            'location' => 'string|required|min:3',
        ];
    }
}
