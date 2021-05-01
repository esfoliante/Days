import PanelBase from '../../components/PanelBase';
import Layout from '../../components/Layout';
import InformationCard from '../../components/InformationCard';
import EntranceIcon from '../../components/EntranceIcon';

import { Users } from 'react-feather';
import React from 'react';

export default function Home() {
    return (
        <Layout>
            <div className="w-full min-h-full">
                <PanelBase>
                    <div className="m-10 grid grid-flow-row grid-cols-3 gap-20">
                        <InformationCard title="Utilizadores" content="200" icon={<Users size={70} className="ml-auto mr-5" />} />
                        <InformationCard title="Alunos" content="1500" icon={<Users size={70} className="ml-auto mr-5" />} />
                        <InformationCard title="Turmas" content="24" icon={<Users size={70} className="ml-auto mr-5" />} />
                    </div>
                    <div className="m-10 grid grid-cols-12">
                        <div className="col-span-12 h-96 shadow rounded-md pl-5">
                            <p className="font-bold text-xl">Registo de entradas e saidas recentes</p>
                            <div className="mt-12">
                                <div className="grid grid-flow-row grid-cols-4 gap-10">
                                    <EntranceIcon image="profile.jpg" name="Pedrinho Abrunhosa" time="08:00" isEntrance={true} />
                                    <EntranceIcon image="profile.jpg" name="Pedrinho Arrojado" time="08:00" isEntrance={true} />
                                    <EntranceIcon image="profile.jpg" name="Pedrinho Fixe" time="08:00" isEntrance={false} />
                                    <EntranceIcon image="profile.jpg" name="Pedrinho jdhjshkfjhsjkfhkjshfjshfkjdhs" time="08:00" isEntrance={true} />
                                    <EntranceIcon image="profile.jpg" name="Pedrinho Sem overflow" time="08:00" isEntrance={false} />
                                    <EntranceIcon image="profile.jpg" name="Pedrinho Grande Cena" time="08:00" isEntrance={false} />
                                    <EntranceIcon image="profile.jpg" name="Pedrinho Sem Dados" time="08:00" isEntrance={true} />
                                    <EntranceIcon image="profile.jpg" name="Pedrinho Marginal" time="08:00" isEntrance={false} />
                                </div>
                                <p className="mt-10 underline cursor-pointer">Ver mais</p>
                            </div>
                        </div>
                    </div>
                </PanelBase>
            </div>
        </Layout>
    )
}
