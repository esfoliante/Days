<?php

namespace App\Http\Livewire\Tutor;

use App\Http\Traits\WithModal;
use App\Models\Tutor;
use Livewire\Component;
use Livewire\WithPagination;

class Index extends Component
{
    use WithPagination, WithModal;

    public $tutor;
    public $searchTerm = '';

    protected $paginationTheme = 'bootstrap';

    protected $searchColumns = ['id','name','email','contact','profession','cc','nif','residence','birthday',];

    protected $listeners = ['update', 'openDestroy', 'destroy'];


	 public $name;
	 public $email;
	 public $password;
	 public $contact;
	 public $profession;
	 public $cc;
	 public $nif;
	 public $residence;
	 public $birthday;

    public function render()
    {
        $searchTerm = "%$this->searchTerm%";

        $tutors = Tutor::query();

        if (strlen($this->searchTerm) > 0) {
            $tutors = $tutors->where(function ($query) use ($searchTerm) {
                foreach ($this->searchColumns as $column) {
                    $query->orwhere($column, 'like', $searchTerm);
                }
            });
        }

        $tutors = $tutors->latest()->paginate(8);

        return view('livewire.tutors.index', ['tutors' => $tutors]);
    }

    public function create()
    {
        $this->tutor = null;
        $this->resetErrorBag();
        $this->emit('openModal');
        $this->resetInputs();
    }

    public function update(Tutor $tutor)
    {
        $this->tutor = $tutor;
        $this->resetErrorBag();
        $this->emit('openModal');
        $this->resetInputs($tutor);
    }

    public function openDestroy(Tutor $tutor)
    {
        $this->tutor = $tutor;
        $this->emit('openDestroyModal');
    }

    public function destroy()
    {
        $this->tutor->delete();
        $this->emit('toast-success', 'Tutor removida(o) com sucesso');
        $this->emit('closeDestroyModal');
    }

    public function closeModal()
    {
        $this->emit('closeModal');
    }

    public function store()
    {
        $data = $this->validate($this->rules());

        isset($this->tutor)
            ? $this->tutor->update($data)
            : Tutor::create($data);

        $this->closeModal();
        $this->emit('toast-success', isset($this->tutor)
            ? 'Tutor atualizada(o)'
            : 'Tutor criada(o)');
    }

    private function resetInputs(Tutor $tutor = null)
    {

			$this->name = $tutor->name ??'';
			$this->email = $tutor->email ??'';
			$this->password = '';
			$this->contact = $tutor->contact ??'';
			$this->profession = $tutor->profession ??'';
			$this->cc = $tutor->cc ??'';
			$this->nif = $tutor->nif ??'';
			$this->residence = $tutor->residence ??'';
			$this->birthday = $tutor->birthday ??'';
		if($tutor) {
			}
        $this->emit('clear-input');
    }

    public function rules()
    {
        return [
            'name' => 'string|required|min:3',
			'email' => 'email|required',
			'password' => '' . $this->tutor == null ? 'required' : 'nullable' . '',
			'contact' => 'string|required',
			'profession' => 'string|required',
			'cc' => 'string|required',
			'nif' => 'string|min:9|max:9|required',
			'residence' => 'string|required|min:3',
			'birthday' => 'date|required',
        ];
    }

}
