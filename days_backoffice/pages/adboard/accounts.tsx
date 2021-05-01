import Section from '../../components/Section';
import ProfileCard from '../../components/ProfileCard';
import PanelBase from '../../components/PanelBase';
import Layout from '../../components/Layout';
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
                                <ProfileCard name="Pedro Ilusões" image="teacher.png" />
                                <ProfileCard name="Pedro Fugas" image="teacher.png" />
                                <ProfileCard name="Pedro Salvações" image="teacher.png" />
                                <ProfileCard name="Pedro Defensivo" image="teacher.png" />
                                <ProfileCard name="Pedrini o 3º" image="teacher.png" />
                                <ProfileCard name="São Pedrini" image="teacher.png" />
                                <ProfileCard name="Pedro pisca olho" image="teacher.png" />
                                <ProfileCard name="Pedro Santos" image="teacher.png" />
                                <ProfileCard name="PG" image="teacher.png" />
                                <ProfileCard name="Padre Pedrini" image="teacher.png" />
                            </div>
                        </Section>
                        <Section title="Funcionários">
                            <div className="grid grid-flow-row grid-cols-10 gap-5">
                                <ProfileCard name="Pedrinho Abrunhosa" />
                                <ProfileCard name="Pedrinho Abrunhosa" image="profile.jpg" />
                                <ProfileCard name="Pedrinho Abrunhosa" image="profile.jpg" />
                                <ProfileCard name="Pedrinho Abrunhosa" image="profile.jpg" />
                                <ProfileCard name="Pedrinho Abrunhosa" image="profile.jpg" />
                                <ProfileCard name="Pedrinho Abrunhosa" image="profile.jpg" />
                                <ProfileCard name="Pedrinho Abrunhosa" image="profile.jpg" />
                                <ProfileCard name="Pedrinho Abrunhosa" image="profile.jpg" />
                                <ProfileCard name="Pedrinho Abrunhosa" image="profile.jpg" />
                                <ProfileCard name="Pedrinho Abrunhosa" image="profile.jpg" />
                            </div>
                        </Section>
                    </div>
                </div>
            </PanelBase>
        </div>
    </Layout>
);

export default Accounts;