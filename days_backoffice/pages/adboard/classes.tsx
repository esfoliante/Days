import Section from '../../components/Section';
import ProfileCard from '../../components/ProfileCard';
import PanelBase from '../../components/PanelBase';
import Layout from '../../components/Layout';
import React from 'react';

const Classes: React.FC = () => (
    <Layout>
        <div className="w-full min-h-full">
            <PanelBase>
                <div className="m-10">
                    <Section title="Turmas">
                        <div className="grid grid-flow-row grid-cols-10 gap-5">
                            <ProfileCard name="12ITM" />
                            <ProfileCard name="12AM" />
                            <ProfileCard name="12ITM" />
                            <ProfileCard name="12AM" />
                            <ProfileCard name="12ITM" />
                            <ProfileCard name="12AM" />
                            <ProfileCard name="12ITM" />
                            <ProfileCard name="12AM" />
                            <ProfileCard name="12ITM" />
                            <ProfileCard name="12AM" />
                        </div>
                        <p className="bg-green-600 p-3 font-medium text-white w-40 rounded-md text-center">Adicionar turma</p>
                    </Section>
                </div>
            </PanelBase>
        </div>
    </Layout>
);

export default Classes;