import CourseCard from '../../components/CourseCard';
import PanelBase from '../../components/PanelBase';
import Layout from '../../components/Layout';
import React from 'react';


const Courses: React.FC = () => (
    <Layout>
        <div className="w-full min-h-full">
            <PanelBase>
                <div className="m-10">
                    <p className="text-3xl font-bold">Cursos</p>
                    <div className="mt-10">
                        <div className="grid grid-flow-row grid-cols-10 gap-5">
                            <CourseCard name="Informática e Tecnologias Multimédia" slug="ITM" director="Maria José Costa" image="itm-preview.jpg" />
                            <CourseCard name="Informática e Tecnologias Multimédia" slug="ITM" director="Maria José Costa" image="itm-preview.jpg" />
                            <CourseCard name="Informática e Tecnologias Multimédia" slug="ITM" director="Maria José Costa" image="itm-preview.jpg" />
                            <CourseCard name="Informática e Tecnologias Multimédia" slug="ITM" director="Maria José Costa" image="itm-preview.jpg" />
                            <CourseCard name="Informática e Tecnologias Multimédia" slug="ITM" director="Maria José Costa" image="itm-preview.jpg" />
                            <CourseCard name="Informática e Tecnologias Multimédia" slug="ITM" director="Maria José Costa" />
                            <CourseCard name="Informática e Tecnologias Multimédia" slug="ITM" director="Maria José Costa" />
                            <CourseCard name="Informática e Tecnologias Multimédia" slug="ITM" director="Maria José Costa" />
                            <CourseCard name="Informática e Tecnologias Multimédia" slug="ITM" director="Maria José Costa" />
                            <CourseCard name="Informática e Tecnologias Multimédia" slug="ITM" director="Maria José Costa" />
                        </div>
                        <p className="bg-green-600 p-3 font-medium text-white w-40 rounded-md text-center">Adicionar curso</p>
                    </div>
                </div>
            </PanelBase>
        </div>
    </Layout>
);

export default Courses;