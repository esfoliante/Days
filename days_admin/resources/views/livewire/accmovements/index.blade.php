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
            <button type="button" class="btn btn-primary" wire:click="create">Novo movimento de conta</button>

        </div>

        <div class="card-body">
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th>Student</th>
					<th>Montante</th>
					<th>Tipo de transação</th>
					<th>Localização</th>

                    <th scope="col">Criado a</th>
                    <th scope="col">Ações</th>
                </tr>
                </thead>
                <tbody>

                @forelse($accmovements as $accmovementItem)
                    <tr>
                        <th scope="row">{{ $accmovementItem->id }}</th>
                        <td>{{ $accmovementItem->student->email ?? '' }}</td>
						<td>{{ $accmovementItem->amount ?? 'Sem dados' }}</td>
						<td>{{ \App\Models\AccMovement::TRANSACTION_TYPE_SELECT[$accmovementItem->is_debt] ?? '' }}</td>
						<td>{{ $accmovementItem->location ?? '' }}</td>


                        <td>{{ $accmovementItem->created_at->diffForHumans()  }}</td>

                        <td>
                            <div class="btn-group" role="group" aria-label="Basic example">
                                <button type="button" wire:click="$emit('update', {{ $accmovementItem }})" class="btn btn-warning">
                                    Editar
                                </button>
                                <button type="button" class="btn btn-danger"
                                        wire:click="$emit('openDestroy', {{ $accmovementItem }})">Remover
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

            {{ $accmovements->links() }}
        </div>
    </div>

    <div wire:ignore.self class="modal fade" id="postModal" tabindex="-1" role="dialog"
         aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title"
                        id="exampleModalLabel">{{ isset($accmovement) ? __('Editar Acc Movement') : __('Novo Acc Movement') }}</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form wire:submit.prevent="store">




                  <div class="form-group" wire:ignore>
                            <label for="student_id">Aluno</label>
                            <select
                                class=""
                                id="student_id"
                            >
                            <option selected>Selecione uma opção</option>
                            @foreach(App\Models\Student::all() as $child)
                                <option value="{{ $child->id }}">{{ $child->email }}</option>
                            @endforeach

                            </select>
                </div>


            <label for="basiurl">Montante</label>
            <div class="input-group mb-3">
                    <input type="number" min="3" min="6" class="form-control @error('amount') is-invalid @enderror"
                                   wire:model="amount" name="Montante">
                     @error('amount')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
            </div>


                  <div class="form-group" wire:ignore>
                            <label for="transaction_type">Tipo de transação</label>
                            <select
                                class=""
                                id="transaction_type"
                            >
                            <option selected>Selecione uma opção</option>
                             <option value="0">{{ App\Models\AccMovement::TRANSACTION_TYPE_SELECT['0'] ?? '' }}</option>
							 <option value="1">{{ App\Models\AccMovement::TRANSACTION_TYPE_SELECT['1'] ?? '' }}</option>

                            </select>
                </div>


            <label for="basiurl">Localização</label>
            <div class="input-group mb-3">
                    <input type="text" class="form-control @error('location') is-invalid @enderror"
                                   wire:model="location" name="Localização">
                     @error('location')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
            </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                    <button type="submit"
                            class="btn btn-primary">{{ isset($accmovement) ? __('Atualizar') : __('Criar') }}</button>
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
                    <h5 class="modal-title" id="exampleModalLabel">{{ __('Remover Acc Movement') }}</h5>
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





         new TomSelect('#student_id', {
             plugins: ['change_listener'],
            onChange: (value) => {
                @this.set('student_id', value);
            }
        });




         new TomSelect('#transaction_type', {
             plugins: ['change_listener'],
            onChange: (value) => {
                @this.set('is_debt', value);
            }
        });


    </script>
@endpush
