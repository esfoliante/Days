import Section from '../../../../components/Section';
import PanelBase from '../../../../components/PanelBase';
import Layout from '../../../../components/Layout';
import React from 'react';
import { Check } from 'react-feather';

const ClassroomForm: React.FC = () => {

    const editClassroom = async event => {
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
        <form onSubmit={editClassroom} className="w-full">
            <p>Bloco da sala</p>
            <input placeholder="Nome do bloco..." id="txtDepartment" name="txtDepartment" defaultValue="B" className="pl-2 h-10 w-1/5 x-auto rounded border-none py-5 shadow ring-2 ring-gray-500 bg-white" />
            <p>Andar</p>
            <input placeholder="Andar..." id="txtFloor" name="txtFloor" defaultValue="3" className="pl-2 h-10 w-1/5 x-auto rounded border-none py-5 shadow ring-2 ring-gray-500 bg-white" />
            <p>Número da sala</p>
            <input placeholder="Número da sala..." id="txtClassroomNumber" name="txtClassroomNumber" defaultValue="8" className="pl-2 h-10 w-1/5 x-auto rounded border-none py-5 shadow ring-2 ring-gray-500 bg-white" />
            <div className="text-center w-10 h-10 bg-blue-400 rounded-md mt-5">
                <Check size={20} className="mt-2 text-white" />
            </div>
        </form>
    )
}


const EditClassroom: React.FC = () => (
    <Layout>
        <div className="w-full min-h-full">
            <PanelBase>
                <div className="m-10">
                    <Section title="Salas">
                        <div className="flex flex-col">
                            <ClassroomForm />
                        </div>
                    </Section>
                </div>
            </PanelBase>
        </div>
    </Layout>
);

export default EditClassroom;