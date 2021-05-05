import Section from '../../../components/Section';
import ProfileCard from '../../../components/ProfileCard';
import PanelBase from '../../../components/PanelBase';
import Layout from '../../../components/Layout';
import React from 'react';

const Subjects: React.FC = () => (
    <Layout>
        <div className="w-full min-h-full">
            <PanelBase>
                <div className="m-10">
                    <Section title="Disciplinas">
                        <div className="grid grid-flow-row grid-cols-10 gap-5">
                            <ProfileCard name="Português" action="subjects" cardID={1} />
                            <ProfileCard name="Matemática A" action="subjects" cardID={1} />
                            <ProfileCard name="Economia" action="subjects" cardID={1} />
                            <ProfileCard name="Projeto Tecnologico" action="subjects" cardID={1} />
                            <ProfileCard name="Fundamentos e Arquitetura de Computadores" action="subjects" cardID={1} />
                            <ProfileCard name="Português" action="subjects" cardID={1} />
                            <ProfileCard name="Matemática A" action="subjects" cardID={1} />
                            <ProfileCard name="Economia" action="subjects" cardID={1} />
                            <ProfileCard name="Projeto Tecnologico" action="subjects" cardID={1} />
                            <ProfileCard name="Fundamentos e Arquitetura de Computadores" action="subjects" cardID={1} />
                        </div>
                        <p className="bg-green-600 p-3 font-medium text-white w-44 rounded-md text-center">Adicionar disciplina</p>
                    </Section>
                </div>
            </PanelBase>
        </div>
    </Layout>
);

export default Subjects;