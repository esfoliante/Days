import Section from '../../../../components/Section';
import PanelBase from '../../../../components/PanelBase';
import Layout from '../../../../components/Layout';
import React from 'react';
import { Edit } from 'react-feather';
import Link from 'next/link';
import { useRouter } from 'next/router';
import Dropdown from 'react-dropdown';
import 'react-dropdown/style.css';
import SmallProfileCard from '../../../../components/SmallProfileCard';

const ShowRole: React.FC = () => {
    const router = useRouter();
    const { id } = router.query;

    const options = [
        '10º ano', '11º ano', '12º ano'
    ];

    const defaultOption = options[0];

    return (
        <Layout>
            <div className="w-full min-h-full">
                <PanelBase>
                    <div className="m-10">
                        <Section title="Turmas">
                            <div className="flex flex-col">
                                <form action="" className="w-full">
                                    <p>Nome da turma</p>
                                    <input placeholder="Nome da turma..." id="txtName" name="txtName" defaultValue="12ITM" className="pl-2 h-10 w-1/5 x-auto rounded border-none py-5 shadow ring-2 ring-gray-500 bg-white" disabled />
                                    <p>Ano da turma</p>
                                    <Dropdown options={options} value={defaultOption} placeholder="Select an option" className="w-1/5 ring-2 ring-gray-500 border-none rounded" disabled />
                                    <p>Diretor(a) de turma</p>
                                    <input placeholder="Diretor(a) de turma..." id="txtClassDirector" name="txtClassDirector" defaultValue="Rui Baptista" className="pl-2 h-10 w-1/5 x-auto rounded border-none py-5 shadow ring-2 ring-gray-500 bg-white" disabled />
                                    <p>Delegado(a) de turma</p>
                                    <input placeholder="Delegado(a) de turma..." id="txtClassRep" name="txtClassRep" defaultValue="Miguel Ângelo Carvalho Ferreira" className="pl-2 h-10 w-1/5 x-auto rounded border-none py-5 shadow ring-2 ring-gray-500 bg-white" disabled />
                                </form><br />
                                <Link href={'/adboard/classes/edit/' + id}>
                                    <div className="text-center w-10 h-10 bg-yellow-300 rounded-md mt-5 cursor-pointer">
                                        <Edit size={20} className="mt-2 text-white" />
                                    </div>
                                </Link>
                            </div>
                        </Section>
                        <Section title="Alunos">
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
}

export default ShowRole;