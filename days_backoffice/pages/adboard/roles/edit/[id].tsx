import Section from '../../../../components/Section';
import PanelBase from '../../../../components/PanelBase';
import Layout from '../../../../components/Layout';
import React from 'react';
import { Check } from 'react-feather';

const RoleForm: React.FC = () => {

    const editRole = async event => {
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
        <form onSubmit={editRole} className="w-full">
            <p>Nome do cargo</p>
            <input placeholder="Nome do cargo..." id="txtName" name="txtName" value="Funcionário" className="pl-2 h-10 w-1/5 text-md shadow-inner focus:ring-2 focus:ring-green-600 text-black" />
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
                    <Section title="Cargo">
                        <div className="flex flex-col">
                            <RoleForm />
                        </div>
                    </Section>
                </div>
            </PanelBase>
        </div>
    </Layout>
);

export default EditSubject;