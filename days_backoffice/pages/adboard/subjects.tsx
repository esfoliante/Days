import Section from '../../components/Section';
import ProfileCard from '../../components/ProfileCard';
import PanelBase from '../../components/PanelBase';
import Layout from '../../components/Layout';
import React from 'react';

const Subjects: React.FC = () => (
    <Layout>
        <div className="w-full min-h-full">
            <PanelBase>
                <div className="m-10">
                    <Section title="Disciplinas">
                        <div className="grid grid-flow-row grid-cols-10 gap-5">
                            <ProfileCard name="Português" />
                            <ProfileCard name="Matemática A" />
                            <ProfileCard name="Economia" />
                            <ProfileCard name="Projeto Tecnologico" />
                            <ProfileCard name="Fundamentos e Arquitetura de Computadores" />
                            <ProfileCard name="Português" />
                            <ProfileCard name="Matemática A" />
                            <ProfileCard name="Economia" />
                            <ProfileCard name="Projeto Tecnologico" />
                            <ProfileCard name="Fundamentos e Arquitetura de Computadores" />
                        </div>
                        <p className="bg-green-600 p-3 font-medium text-white w-44 rounded-md text-center">Adicionar disciplina</p>
                    </Section>
                </div>
            </PanelBase>
        </div>
    </Layout>
);

export default Subjects;