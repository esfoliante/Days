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
            <button type="button" class="btn btn-primary" wire:click="create">Novo Encarregado de Educação</button>

        </div>

        <div class="card-body">
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th>Nome</th>
					<th>Email</th>
					<th>Contacto</th>
					<th>Profissão</th>
					<th>Cartão de Cidadão</th>
					<th>NIF</th>
					<th>Morada</th>
					<th>Data de nascimento</th>

                    <th scope="col">Criado a</th>
                    <th scope="col">Ações</th>
                </tr>
                </thead>
                <tbody>

                @forelse($tutors as $tutorItem)
                    <tr>
                        <th scope="row">{{ $tutorItem->id }}</th>
                        <td>{{ $tutorItem->name ?? '' }}</td>
						<td>{{ \Illuminate\Support\Str::limit($tutorItem->email, 20, '...') }}</td>
						<td>{{ $tutorItem->contact ?? '' }}</td>
						<td>{{ $tutorItem->profession ?? '' }}</td>
						<td>{{ $tutorItem->cc ?? '' }}</td>
						<td>{{ $tutorItem->nif ?? '' }}</td>
						<td>{{ \Illuminate\Support\Str::limit($tutorItem->residence, 10, '...') }}</td>
						<td>{{ $tutorItem->birthday ?? '' }}</td>


                        <td>{{ $tutorItem->created_at->diffForHumans()  }}</td>

                        <td>
                            <div class="btn-group" role="group" aria-label="Basic example">
                                <button type="button" wire:click="$emit('update', {{ $tutorItem }})" class="btn btn-warning">
                                    Editar
                                </button>
                                <button type="button" class="btn btn-danger"
                                        wire:click="$emit('openDestroy', {{ $tutorItem }})">Remover
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

            {{ $tutors->links() }}
        </div>
    </div>

    <div wire:ignore.self class="modal fade" id="postModal" tabindex="-1" role="dialog"
         aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title"
                        id="exampleModalLabel">{{ isset($tutor) ? __('Editar Tutors') : __('Novo Tutors') }}</h5>
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


            <label for="basiurl">Contacto</label>
            <div class="input-group mb-3">
                    <input type="text" class="form-control @error('contact') is-invalid @enderror"
                                   wire:model="contact" name="Contacto">
                     @error('contact')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
            </div>


            <label for="basiurl">Profissão</label>
            <div class="input-group mb-3">
                    <input type="text" class="form-control @error('profession') is-invalid @enderror"
                                   wire:model="profession" name="Profissão">
                     @error('profession')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
            </div>


            <label for="basiurl">Cartão de Cidadão</label>
            <div class="input-group mb-3">
                    <input type="text" class="form-control @error('cc') is-invalid @enderror"
                                   wire:model="cc" name="Cartão de Cidadão">
                     @error('cc')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
            </div>


            <label for="basiurl">NIF</label>
            <div class="input-group mb-3">
                    <input type="text" class="form-control @error('nif') is-invalid @enderror"
                                   wire:model="nif" name="NIF">
                     @error('nif')
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


                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                    <button type="submit"
                            class="btn btn-primary">{{ isset($tutor) ? __('Atualizar') : __('Criar') }}</button>
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
                    <h5 class="modal-title" id="exampleModalLabel">{{ __('Remover Tutors') }}</h5>
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





















    </script>
@endpush