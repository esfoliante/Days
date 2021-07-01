<div>
    <div class="card card-accent-info">
        <div class="card-header">{{ __('Pesquisa') }}</div>
        <div class="card-body">
            <div class="input-group flex-nowrap">
                <div class="input-group-prepend">
                    <span class="input-group-text" id="addon-wrapping"><i class="fas fa-search"></i></span>
                </div>
                <input type="text" class="form-control" wire:model="searchTerm" placeholder="Procurar"
                       aria-label="Username" aria-describedby="addon-wrapping">
            </div>
        </div>
    </div>

    <div class="card card-accent-primary">
        <div class="card-header d-flex align-items-center justify-content-between">
            {{ __('Dashboard') }}
            <button type="button" class="btn btn-primary" wire:click="create">Nova(o) Student</button>

        </div>

        <div class="card-body">
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th>Nome</th>
					<th>Email</th>
					<th>Password</th>
					<th>Limitação</th>
					<th>Alergias</th>
					<th>Contacto de Emergência</th>
					<th>CC</th>
					<th>Morada</th>
					<th>Data de nascimento</th>
					<th>Course</th>
					<th>Tutor</th>
					
                    <th scope="col">Criado a</th>
                    <th scope="col">Ações</th>
                </tr>
                </thead>
                <tbody>

                @forelse($students as $studentItem)
                    <tr>
                        <th scope="row">{{ $studentItem->id }}</th>
                        <td>{{ $studentItem->name ?? '' }}</td>
						<td>{{ $studentItem->email ?? '' }}</td>
						<td>Escondido</td>
						<td>{{ $studentItem->limitation ?? '' }}</td>
						<td>{{ $studentItem->allergies ?? '' }}</td>
						<td>{{ $studentItem->emergency_contact ?? '' }}</td>
						<td>{{ $studentItem->cc ?? '' }}</td>
						<td>{{ $studentItem->residence ?? '' }}</td>
						<td>{{ $studentItem->birthday ?? '' }}</td>
						<td>{{ $studentItem->course->name ?? '' }}</td>
						<td>{{ $studentItem->tutors->name ?? '' }}</td>
						

                        <td>{{ $studentItem->created_at->diffForHumans()  }}</td>

                        <td>
                            <div class="btn-group" role="group" aria-label="Basic example">
                                <button type="button" wire:click="$emit('update', {{ $studentItem }})" class="btn btn-warning">
                                    Editar
                                </button>
                                <button type="button" class="btn btn-danger"
                                        wire:click="$emit('openDestroy', {{ $studentItem }})">Remover
                                </button>
                            </div>
                        </td>
                    </tr>
                @empty
                    <tr>
                        <th>{{ __('Sem resultados') }}</th>
                    </tr>
                @endforelse

                </tbody>
            </table>

            {{ $students->links() }}
        </div>
    </div>

    <div wire:ignore.self class="modal fade" id="postModal" tabindex="-1" role="dialog"
         aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title"
                        id="exampleModalLabel">{{ isset($student) ? __('Editar Student') : __('Novo Student') }}</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form wire:submit.prevent="store">

                        


            <label for="basiurl">Nome</label>
            <div class="input-group mb-3">
                    <input type="text" class="form-control @error('name') is-invalid @enderror"
                                   wire:model="name" name="Nome">
                     @error('name')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
            </div>


            <label for="basiurl">Email</label>
            <div class="input-group mb-3">
                    <input type="email" class="form-control @error('email') is-invalid @enderror"
                                   wire:model="email" name="Email">
                     @error('email')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
            </div>


            <label for="basiurl">Password</label>
            <div class="input-group mb-3">
                    <input type="password" class="form-control @error('password') is-invalid @enderror"
                                   wire:model="password" name="Password">
                     @error('password')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
            </div>


            <label for="basiurl">Limitação</label>
            <div class="input-group mb-3">
                    <input type="text" class="form-control @error('limitation') is-invalid @enderror"
                                   wire:model="limitation" name="Limitação">
                     @error('limitation')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
            </div>


            <label for="basiurl">Alergias</label>
            <div class="input-group mb-3">
                    <input type="text" class="form-control @error('allergies') is-invalid @enderror"
                                   wire:model="allergies" name="Alergias">
                     @error('allergies')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
            </div>


            <label for="basiurl">Contacto de Emergência</label>
            <div class="input-group mb-3">
                    <input type="text" class="form-control @error('emergency_contact') is-invalid @enderror"
                                   wire:model="emergency_contact" name="Contacto de Emergência">
                     @error('emergency_contact')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
            </div>


            <label for="basiurl">CC</label>
            <div class="input-group mb-3">
                    <input type="text" class="form-control @error('cc') is-invalid @enderror"
                                   wire:model="cc" name="CC">
                     @error('cc')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
            </div>


            <label for="basiurl">Morada</label>
            <div class="input-group mb-3">
                    <input type="text" class="form-control @error('residence') is-invalid @enderror"
                                   wire:model="residence" name="Morada">
                     @error('residence')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
            </div>


            <div class="form-group">
                    <label for="basiurl">Data de nascimento</label>
                    <input type="date" class="form-control  @error('birthday') is-invalid @enderror"
                     wire:model="birthday" name="Data de nascimento">

                      @error('birthday')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
                </div>
            


                  <div class="form-group" wire:ignore>
                            <label for="course_id">Course</label>
                            <select
                                class=""
                                id="course_id"
                            >
                            <option selected>Selecione uma opção</option>
                            @foreach(App\Models\Course::all() as $child)
                                <option value="{{ $child->id }}">{{ $child->name }}</option>
                            @endforeach

                            </select>
                </div>


                  <div class="form-group" wire:ignore>
                            <label for="tutor_id">Tutor</label>
                            <select
                                class=""
                                id="tutor_id"
                            >
                            <option selected>Selecione uma opção</option>
                            @foreach(App\Models\Tutor::all() as $child)
                                <option value="{{ $child->id }}">{{ $child->name }}</option>
                            @endforeach

                            </select>
                </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                    <button type="submit"
                            class="btn btn-primary">{{ isset($student) ? __('Atualizar') : __('Criar') }}</button>
                </div>
                </form>

            </div>
        </div>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="destroyModal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">{{ __('Remover Student') }}</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    {{ __('Tem a certeza que pretende remover?') }}
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                    <button type="button" wire:click="$emit('destroy')" class="btn btn-danger">Remover</button>
                </div>
            </div>
        </div>
    </div>

</div>

@push('script')
    <script type="text/javascript">

        window.livewire.on('openModal', () => {
            $('#postModal').modal('show');
        });
        window.livewire.on('closeModal', () => {
            $('#postModal').modal('hide');
        });
        window.livewire.on('openDestroyModal', () => {
            $('#destroyModal').modal('show');
        });
        window.livewire.on('closeDestroyModal', () => {
            $('#destroyModal').modal('hide');
        });


        




















         new TomSelect('#course_id', {
             plugins: ['change_listener'],
            onChange: (value) => {
                @this.set('course_id', value);
            }
        });


         new TomSelect('#tutor_id', {
             plugins: ['change_listener'],
            onChange: (value) => {
                @this.set('tutor_id', value);
            }
        });
    </script>
@endpush
