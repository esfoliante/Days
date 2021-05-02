import Section from '../../../components/Section';
import ProfileCard from '../../../components/ProfileCard';
import PanelBase from '../../../components/PanelBase';
import Layout from '../../../components/Layout';
import React from 'react';

const Accounts: React.FC = () => (
    <Layout>
        <div className="w-full min-h-full">
            <PanelBase>
                <div className="m-10">
                    <p className="text-3xl font-bold">Contas</p>
                    <div className="mt-10">
                        <Section title="Professores">
                            <div className="grid grid-flow-row grid-cols-10 gap-5">
                                <ProfileCard name="Pedro Ilusões" image="teacher.png" action="accounts" cardID={1} />
                                <ProfileCard name="Pedro Fugas" image="teacher.png" action="accounts" cardID={1} />
                                <ProfileCard name="Pedro Salvações" image="teacher.png" action="accounts" cardID={1} />
                                <ProfileCard name="Pedro Defensivo" image="teacher.png" action="accounts" cardID={1} />
                                <ProfileCard name="Pedrini o 3º" image="teacher.png" action="accounts" cardID={1} />
                                <ProfileCard name="São Pedrini" image="teacher.png" action="accounts" cardID={1} />
                                <ProfileCard name="Pedro pisca olho" image="teacher.png" action="accounts" cardID={1} />
                                <ProfileCard name="Pedro Santos" image="teacher.png" action="accounts" cardID={1} />
                                <ProfileCard name="PG" image="teacher.png" action="accounts" cardID={1} />
                                <ProfileCard name="Padre Pedrini" image="teacher.png" action="accounts" cardID={1} />
                            </div>
                            <p className="bg-green-600 p-3 font-medium text-white w-48 rounded-md text-center">Adicionar professor</p>
                        </Section>
                        <Section title="Funcionários">
                            <div className="grid grid-flow-row grid-cols-10 gap-5">
                                <ProfileCard name="Pedrinho Abrunhosa" action="accounts" cardID={1} />
                                <ProfileCard name="Pedrinho Abrunhosa" image="profile.jpg" action="accounts" cardID={1} />
                                <ProfileCard name="Pedrinho Abrunhosa" image="profile.jpg" action="accounts" cardID={1} />
                                <ProfileCard name="Pedrinho Abrunhosa" image="profile.jpg" action="accounts" cardID={1} />
                                <ProfileCard name="Pedrinho Abrunhosa" image="profile.jpg" action="accounts" cardID={1} />
                                <ProfileCard name="Pedrinho Abrunhosa" image="profile.jpg" action="accounts" cardID={1} />
                                <ProfileCard name="Pedrinho Abrunhosa" image="profile.jpg" action="accounts" cardID={1} />
                                <ProfileCard name="Pedrinho Abrunhosa" image="profile.jpg" action="accounts" cardID={1} />
                                <ProfileCard name="Pedrinho Abrunhosa" image="profile.jpg" action="accounts" cardID={1} />
                                <ProfileCard name="Pedrinho Abrunhosa" image="profile.jpg" action="accounts" cardID={1} />
                            </div>
                            <p className="bg-green-600 p-3 font-medium text-white w-48 rounded-md text-center">Adicionar funcionário</p>
                        </Section>
                    </div>
                </div>
            </PanelBase>
        </div>
    </Layout>
);

export default Accounts;