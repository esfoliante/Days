import CourseCard from '../../components/CourseCard';

const Courses: React.FC = () => (
    <div className="m-10">
        <p className="text-3xl font-bold">Cursos</p>
        <div className="mt-10">
            <div className="grid grid-flow-row grid-cols-10 gap-5">
                <CourseCard name="Informática e Tecnologias Multimédia" slug="ITM" />
                <CourseCard name="Informática e Tecnologias Multimédia" slug="ITM" />
                <CourseCard name="Informática e Tecnologias Multimédia" slug="ITM" />
                <CourseCard name="Informática e Tecnologias Multimédia" slug="ITM" />
                <CourseCard name="Informática e Tecnologias Multimédia" slug="ITM" />
                <CourseCard name="Informática e Tecnologias Multimédia" slug="ITM" />
                <CourseCard name="Informática e Tecnologias Multimédia" slug="ITM" />
                <CourseCard name="Informática e Tecnologias Multimédia" slug="ITM" />
                <CourseCard name="Informática e Tecnologias Multimédia" slug="ITM" />
                <CourseCard name="Informática e Tecnologias Multimédia" slug="ITM" />
            </div>
        </div>
    </div>
);

export default Courses;