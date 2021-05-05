import Section from '../../../../components/Section';
import PanelBase from '../../../../components/PanelBase';
import Layout from '../../../../components/Layout';
import React from 'react';
import { Check } from 'react-feather';

const SubjectForm: React.FC = () => {

    const editSubject = async event => {
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
        <form onSubmit={editSubject} className="w-full">
            <p>Nome da disciplina</p>
            <input type="text" placeholder="Nome da disciplina..." id="txtName" name="txtName" defaultValue="Português" className="pl-2 h-10 w-1/5 x-auto rounded border-none py-5 shadow focus:outline-none ring-2 ring-gray-500 focus:border-transparent" />
            <div className="text-center w-10 h-10 bg-blue-400 rounded-md mt-5">
                <Check size={20} className="mt-2 text-white" />
            </div>
        </form>
    )
}


const EditSubject: React.FC = () => (
    <Layout>
        <div className="w-full min-h-full">
            <PanelBase>
                <div className="m-10">
                    <Section title="Disciplina">
                        <div className="flex flex-col">
                            <SubjectForm />
                        </div>
                    </Section>
                </div>
            </PanelBase>
        </div>
    </Layout>
);

export default EditSubject;