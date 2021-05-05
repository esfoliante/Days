import Section from '../../../../components/Section';
import PanelBase from '../../../../components/PanelBase';
import Layout from '../../../../components/Layout';
import React from 'react';
import { Check } from 'react-feather';
import Dropdown from 'react-dropdown';
import 'react-dropdown/style.css';
import SmallProfileCard from '../../../../components/SmallProfileCard';

const ClassForm: React.FC = () => {

    const editClass = async event => {
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

    const options = [
        '10º ano', '11º ano', '12º ano'
    ];

    const defaultOption = options[0];

    return (
        <form onSubmit={editClass} className="w-full">
            <p>Nome da turma</p>
            <input placeholder="Nome da turma..." id="txtName" name="txtName" defaultValue="12ITM" className="pl-2 h-10 w-1/5 x-auto rounded border-none py-5 shadow ring-2 ring-gray-500 bg-white" />
            <p>Ano da turma</p>
            <Dropdown options={options} value={defaultOption} placeholder="Selecione o ano" className="w-1/5 ring-2 ring-gray-500 border-none rounded" />
            <p>Diretor(a) de turma</p>
            <input placeholder="Diretor(a) de turma..." id="txtClassDirector" name="txtClassDirector" defaultValue="Rui Baptista" className="pl-2 h-10 w-1/5 x-auto rounded border-none py-5 shadow ring-2 ring-gray-500 bg-white" />
            <p>Delegado(a) de turma</p>
            <input placeholder="Delegado(a) de turma..." id="txtClassRep" name="txtClassRep" defaultValue="Miguel Ângelo Carvalho Ferreira" className="pl-2 h-10 w-1/5 x-auto rounded border-none py-5 shadow ring-2 ring-gray-500 bg-white" />
            <div className="text-center w-10 h-10 bg-blue-400 rounded-md mt-5">
                <Check size={20} className="mt-2 text-white" />
            </div>
        </form >
    )
}


const EditClass: React.FC = () => (
    <Layout>
        <div className="w-full min-h-full">
            <PanelBase>
                <div className="m-10">
                    <Section title="Salas">
                        <div className="flex flex-col">
                            <ClassForm />
                        </div>
                    </Section>
                    <Section title="Alunos">
                        <input type="text" placeholder="Introduza o nome do aluno" id="txtName" name="txtName" className="mb-5 rounded border-none w-full h-10 pl-3 py-5 shadow focus:outline-none ring-2 ring-gray-400 focus:border-transparent" />
                        <div className="flex flex-col h-screen">
                            <div className="grid grid-cols-12">
                                <div className="col-span-12 h-full shadow rounded-md pl-5">
                                    <div className="mt-5">
                                        <div className="grid grid-flow-row grid-cols-4 gap-5 pr-5">
                                            <SmallProfileCard name="Pedrinho Abrunhosa" action="accounts" cardID={1} />
                                            <SmallProfileCard name="Pedrinho Abrunhosa" image="profile.jpg" action="accounts" cardID={1} />
                                            <SmallProfileCard name="Pedrinho Abrunhosa" image="profile.jpg" action="accounts" cardID={1} />
                                            <SmallProfileCard name="Pedrinho Abrunhosa" image="profile.jpg" action="accounts" cardID={1} />
                                            <SmallProfileCard name="Pedrinho Abrunhosa" image="profile.jpg" action="accounts" cardID={1} />
                                            <SmallProfileCard name="Pedrinho Abrunhosa" image="profile.jpg" action="accounts" cardID={1} />
                                            <SmallProfileCard name="Pedrinho Abrunhosa" image="profile.jpg" action="accounts" cardID={1} />
                                            <SmallProfileCard name="Pedrinho Abrunhosa" image="profile.jpg" action="accounts" cardID={1} />
                                        </div>
                                        <p className="mt-5 underline cursor-pointer">Ver mais</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </Section>
                </div>
            </PanelBase>
        </div>
    </Layout>
);

export default EditClass;