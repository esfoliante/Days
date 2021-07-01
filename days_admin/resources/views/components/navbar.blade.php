<div class="c-sidebar c-sidebar-dark c-sidebar-fixed c-sidebar-lg-show" id="sidebar">
    <div class="c-sidebar-brand d-lg-down-none">
        <h4 class="m-0">Days</h4>
    </div>
    <ul class="c-sidebar-nav">
        <x-navitem :route="route('courses.index')" title="Cursos" activeRoute="courses/*" single />
	<x-navitem :route="route('schoolclasses.index')" title="Turmas" activeRoute="schoolclasses/*" single />
	<x-navitem :route="route('accmovements.index')" title="Movimentos de Conta" activeRoute="accmovements/*" single />
	<x-navitem :route="route('subjects.index')" title="Disciplinas" activeRoute="subjects/*" single />
	<x-navitem :route="route('communicatios.index')" title="Comunicações" activeRoute="communicatios/*" single />
	<x-navitem :route="route('schedules.index')" title="Horários" activeRoute="schedules/*" single />
	<x-navitem :route="route('classrooms.index')" title="Salas" activeRoute="classrooms/*" single />
	<x-navitem :route="route('tutors.index')" title="Encarregados de Educação" activeRoute="tutors/*" single />
	<x-navitem :route="route('students.index')" title="Alunos" activeRoute="students/*" single />
	<x-navitem :route="route('parentmodels.index')" title="Pais" activeRoute="parentmodels/*" single />
	
        <x-navitem title="Utilizadores" :route="route('users.index')"  activeRoute="users/*" single />
    </ul>
    <button class="c-sidebar-minimizer c-class-toggler" type="button" data-target="_parent" data-class="c-sidebar-minimized"></button>
</div>
