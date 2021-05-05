import Section from '../../../../components/Section';
import PanelBase from '../../../../components/PanelBase';
import Layout from '../../../../components/Layout';
import React from 'react';
import { Check } from 'react-feather';

const CourseForm: React.FC = () => {

    const editCourse = async event => {
        event.preventDefault()

        const res = await fetch('/api/register', {
            body: JSON.stringify({
                name: event.target.name.value
            }),
            headers: {
                'Content-Type': 'application/json'
            },
            method: 'POST'
        });

        const result: JSON = await res.json();
        // result.user => 'Ada Lovelace'
    }

    return (
        <form onSubmit={editCourse} className="w-full">
            <p>Nome do curso</p>
            <input placeholder="Nome do curso..." id="txtName" name="txtName" defaultValue="Informática e Tecnologias Multimédia" className="pl-2 h-10 w-1/5 x-auto rounded border-none py-5 shadow ring-2 ring-gray-500 bg-white" />
            <p>Acrónimo</p>
            <input placeholder="Acrónimo..." id="txtSlug" name="txtSlug" defaultValue="ITM" className="pl-2 h-10 w-1/5 x-auto rounded border-none py-5 shadow ring-2 ring-gray-500 bg-white" />
            <p>Diretor(a) de curso</p>
            <input placeholder="Diretor(a) de curso..." id="txtCourseDirector" name="txtCourseDirector" defaultValue="Maria José Costa" className="pl-2 h-10 w-1/5 x-auto rounded border-none py-5 shadow ring-2 ring-gray-500 bg-white" />
            <div className="text-center w-10 h-10 bg-blue-400 rounded-md mt-5">
                <Check size={20} className="mt-2 text-white" />
            </div>
        </form >
    )
}


const EditCourse: React.FC = () => (
    <Layout>
        <div className="w-full min-h-full">
            <PanelBase>
                <div className="m-10">
                    <Section title="Salas">
                        <div className="flex flex-col">
                            <CourseForm />
                        </div>
                    </Section>
                </div>
            </PanelBase>
        </div>
    </Layout>
);

export default EditCourse;