<x-app-layout>
    <div class="m-10">
        <p class="text-3xl font-bold">Cursos</p>
        <div class="mt-10">
            <x-section title="Cursos">
                <p class="bg-green-600 p-3 mb-5 font-medium text-white w-48 rounded-md text-center">Adicionar Curso</p>
                <div class="grid grid-flow-row grid-cols-4 gap-5">
                    <x-course-card name="Informática e Tecnologias Multimédia" slug="ITM" director="Maria José Costa" image="itm-preview.jpg" />
                    <x-course-card name="Informática e Tecnologias Multimédia" slug="ITM" director="Maria José Costa" image="" />
                    <x-course-card name="Informática e Tecnologias Multimédia" slug="ITM" director="Maria José Costa" image="itm-preview.jpg" />
                    <x-course-card name="Informática e Tecnologias Multimédia" slug="ITM" director="Maria José Costa" image="itm-preview.jpg" />
                </div>
            </x-section>
        </div>
    </div>
    <x-form-modal title="Cursos" x-show="open" @click.away="open = false">
        <form action="#" method="POST">
            @csrf

            <x-label for="name" class="mt-5" value="Nome do curso" />
            <x-input id="name" class="text-gray-600 mt-2 w-full" type="text" name="name" placeholder="Nome do curso..." />
            <x-label for="slug" class="mt-5" value="Abreviatura" />
            <x-input id="slug" class="text-gray-600 mt-2 w-full" type="text" name="slug" placeholder="Abreviatura..." />
            <x-label for="director" class="mt-5" value="Diretor de curso" />
            <x-input id="director" class="text-gray-600 mt-2 w-full" type="text" name="director" placeholder="Diretor de curso..." />
            <div class="flex mt-5 gap-3">
                <x-button-secondary>
                    Fechar
                </x-button-secondary>
                <x-button-primary>
                    Adicionar
                </x-button-primary>
            </div>
        </form>
    </x-form-modal>
</x-app-layout>