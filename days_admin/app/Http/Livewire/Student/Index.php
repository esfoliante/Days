<?php

namespace App\Http\Livewire\Student;

use App\Http\Traits\WithModal;
use App\Models\Student;
use Livewire\Component;
use Livewire\WithPagination;

class Index extends Component
{
    use WithPagination, WithModal;

    public $student;
    public $searchTerm = '';

    protected $paginationTheme = 'bootstrap';

    protected $searchColumns = ['id','name','email','limitation','allergies','emergency_contact','cc','residence','birthday',];

    protected $listeners = ['update', 'openDestroy', 'destroy'];


	 public $name;
	 public $email;
	 public $password;
	 public $limitation;
	 public $allergies;
	 public $emergency_contact;
	 public $cc;
	 public $residence;
	 public $birthday;
	 public $course_id;
	 public $tutor_id;

    public function render()
    {
        $searchTerm = "%$this->searchTerm%";

        $students = Student::query();

        if (strlen($this->searchTerm) > 0) {
            $students = $students->where(function ($query) use ($searchTerm) {
                foreach ($this->searchColumns as $column) {
                    $query->orwhere($column, 'like', $searchTerm);
                }
            });
        }

        $students = $students->latest()->paginate(8);

        return view('livewire.students.index', ['students' => $students]);
    }

    public function create()
    {
        $this->student = null;
        $this->resetErrorBag();
        $this->emit('openModal');
        $this->resetInputs();
    }

    public function update(Student $student)
    {
        $this->student = $student;
        $this->resetErrorBag();
        $this->emit('openModal');
        $this->resetInputs($student);
    }

    public function openDestroy(Student $student)
    {
        $this->student = $student;
        $this->emit('openDestroyModal');
    }

    public function destroy()
    {
        $this->student->delete();
        $this->emit('toast-success', 'Student removida(o) com sucesso');
        $this->emit('closeDestroyModal');
    }

    public function closeModal()
    {
        $this->emit('closeModal');
    }

    public function store()
    {
        $data = $this->validate($this->rules());

        isset($this->student)
            ? $this->student->update($data)
            : Student::create($data);

        $this->closeModal();
        $this->emit('toast-success', isset($this->student)
            ? 'Student atualizada(o)'
            : 'Student criada(o)');
    }

    private function resetInputs(Student $student = null)
    {

			$this->name = $student->name ??'';
			$this->email = $student->email ??'';
			$this->password = '';
			$this->limitation = $student->limitation ??'';
			$this->allergies = $student->allergies ??'';
			$this->emergency_contact = $student->emergency_contact ??'';
			$this->cc = $student->cc ??'';
			$this->residence = $student->residence ??'';
			$this->birthday = $student->birthday ??'';
			$this->course_id = '';
			$this->tutor_id = '';
		if($student) {
			$this->emit('changeInput', ['id' => 'course_id', 'value' => $student->course_id]);
			$this->emit('changeInput', ['id' => 'tutor_id', 'value' => $student->tutor_id]);
			}
        $this->emit('clear-input');
    }

    public function rules()
    {
        return [
            'name' => 'string|required|min:3',
			'email' => 'email|required|required|required|required|required|required',
			'password' => $this->student == null ? 'required' : 'nullable',
			'limitation' => 'string',
			'allergies' => 'string',
			'emergency_contact' => 'string|required',
			'cc' => 'string|required',
			'residence' => 'string|required',
			'birthday' => 'date|required',
			'course_id' => 'integer',
			'tutor_id' => 'integer',
        ];
    }

}
