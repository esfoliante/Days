<div class="m-10">
    <p class="text-3xl font-bold">Food</p>
    <div class="mt-10">
        <x-section title="Food" clickEvent='create'>
            <div class="grid grid-flow-row grid-cols-5 gap-5">
                <x-profile-card name="fksj" image="" canEdit=false></x-profile-card>
                <x-profile-card name="dksmfks" image="" canEdit=true></x-profile-card>
                <x-profile-card name="fsdfksjf" image="" canEdit=true></x-profile-card>
            </div>
        </x-section>
    </div>
    <x-form-modal title="Food" :open="$isOpen">
        <form wire:submit.prevent="store">
            <x-label for="name" class="mt-5" value="Nome da disciplina"  />
            <x-input id="name" class="text-gray-600 mt-2" type="text" name="name" placeholder="Nome da disciplina..."
                wire:model="name" />
            <x-label for="bio" class="mt-5" value="Biografia"  />
            <textarea id="bio" name="bio" wire:model="bio" class="w-auto h-20 text-gray-600 mt-2 border-gray-300 rounded" style="resize: none;" placeholder="Biografia..."></textarea>
            <x-label for="age" class="mt-5" value="Idade"  />
            <x-input id="age" class="text-gray-600 mt-2" type="number" name="age" placeholder="00"
                wire:model="age" />
            <x-label for="role" class="mt-5" value="Cargo" />
            <select name="role" id="role" class="text-gray-600 mt-2 rounded border-gray-300 w-full" wire:model="role">
                <option value="1">Lindo</option>
                <option value="2">Lidão</option>
                <option value="3">Super sexy</option>
            </select>
            <x-label for="tag" class="mt-5" value="Categorias" />
            <select name="tag" id="tag" class="text-gray-600 mt-2 rounded border-gray-300 w-full" wire:model="tag" multiple>
                <option value="1">Temporário</option>
                <option value="2">Interno</option>
                <option value="3">Estagiário escravo</option>
            </select>
            <x-label for="email" class="mt-5" value="E-mail"  />
            <x-input id="email" class="text-gray-600 mt-2" type="email" name="email" placeholder="E-mail..."
                wire:model="email" />
            <x-label for="password" class="mt-5" value="Password"  />
            <x-input id="password" class="text-gray-600 mt-2" type="password" name="password" placeholder="Password..."
                wire:model="password" />
            <div class="flex mt-5 gap-3">
                <x-button-secondary wire:click="closeModal">
                    Fechar
                </x-button-secondary>
                <x-button-primary type="submit">
                    Adicionar
                </x-button-primary>
            </div>
        </form>
    </x-form-modal>
</div>