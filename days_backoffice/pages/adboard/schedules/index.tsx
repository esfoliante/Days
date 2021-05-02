import Section from '../../../components/Section';
import ProfileCard from '../../../components/ProfileCard';
import PanelBase from '../../../components/PanelBase';
import Layout from '../../../components/Layout';
import React from 'react';

const Schedules: React.FC = () => (
    <Layout>
        <div className="w-full min-h-full">
            <PanelBase>
                <div className="m-10">
                    <Section title="Horários">
                        <div className="grid grid-flow-row grid-cols-10 gap-5">
                            <ProfileCard name="12ITM" action="schedules" cardID={1} />
                            <ProfileCard name="12AM" action="schedules" cardID={1} />
                            <ProfileCard name="12ITM" action="schedules" cardID={1} />
                            <ProfileCard name="12AM" action="schedules" cardID={1} />
                            <ProfileCard name="12ITM" action="schedules" cardID={1} />
                            <ProfileCard name="12AM" action="schedules" cardID={1} />
                            <ProfileCard name="12ITM" action="schedules" cardID={1} />
                            <ProfileCard name="12AM" action="schedules" cardID={1} />
                            <ProfileCard name="12ITM" action="schedules" cardID={1} />
                            <ProfileCard name="12AM" action="schedules" cardID={1} />
                        </div>
                        <p className="bg-green-600 p-3 font-medium text-white w-40 rounded-md text-center">Adicionar horário</p>
                    </Section>
                </div>
            </PanelBase>
        </div>
    </Layout>
);

export default Schedules;