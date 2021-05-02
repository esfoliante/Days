import Section from '../../../components/Section';
import ProfileCard from '../../../components/ProfileCard';
import PanelBase from '../../../components/PanelBase';
import Layout from '../../../components/Layout';
import React from 'react';

const Roles: React.FC = () => (
    <Layout>
        <div className="w-full min-h-full">
            <PanelBase>
                <div className="m-10">
                    <Section title="Cargos">
                        <div className="grid grid-flow-row grid-cols-10 gap-5">
                            <ProfileCard name="Diretor" canEdit={false} action="roles" cardID={1} />
                            <ProfileCard name="Funcionário" action="roles" cardID={1} />
                            <ProfileCard name="Professor" action="roles" cardID={1} />
                            <ProfileCard name="Encarregado de Educação" action="roles" cardID={1} />
                            <ProfileCard name="Aluno" action="roles" cardID={1} />
                        </div>
                        <p className="bg-green-600 p-3 font-medium text-white w-40 rounded-md text-center">Adicionar cargo</p>
                    </Section>
                </div>
            </PanelBase>
        </div>
    </Layout>
);

export default Roles;