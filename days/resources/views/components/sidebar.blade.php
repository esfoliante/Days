<div class="w-96 md:w-1/4 lg:w-1/4 min-h-screen shadow">
        <p class="pt-12 pl-10 pb-10 text-2xl font-bold">MENU</p>
        <x-sidebar-item location="/home" title="Home">
            <x-feathericon-home />
        </x-sidebar-item>
        <x-sidebar-item location="accounts" title="Contas">
            <x-feathericon-users />
        </x-sidebar-item>
        <x-sidebar-item location="roles" title="Cargos" @click="usersOpen = true">
            <x-feathericon-tool />
        </x-sidebar-item>
        <x-sidebar-item location="classrooms" title="Salas">
            <x-feathericon-map-pin />
        </x-sidebar-item>
        <x-sidebar-item location="courses" title="Cursos">
            <x-feathericon-book-open />
        </x-sidebar-item>
        <x-sidebar-item location="/subjects" title="Disciplinas">
            <x-feathericon-book />
        </x-sidebar-item>
        <x-sidebar-item location="classes" title="Turmas">
            <x-feathericon-users />
        </x-sidebar-item>
        <x-sidebar-item location="schedules" title="Horários">
            <x-feathericon-calendar />
        </x-sidebar-item>
        <x-sidebar-item location="meals" title="Refeições">
            <x-feathericon-shopping-bag />
        </x-sidebar-item>
        <x-sidebar-item location="entrance" title="Entadas e Saídas">
            <x-feathericon-monitor />
        </x-sidebar-item>
        <x-sidebar-item location="communications" title="Comunicados">
            <x-feathericon-mail />
        </x-sidebar-item>
        <x-sidebar-item location="/food" title="Foood (TESTE)">
            <x-feathericon-trending-down />
        </x-sidebar-item>
    </div>