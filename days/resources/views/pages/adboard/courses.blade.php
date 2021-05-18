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
</x-app-layout>