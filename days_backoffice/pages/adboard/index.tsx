import PanelBase from '../../components/PanelBase';
import Layout from '../../components/Layout';
import HomePage from '../../components/PageComponents/Home';
import React from 'react';
import Accounts from '../../components/PageComponents/Accounts';
import Courses from '../../components/PageComponents/Courses';

export default function Home() {
    return (
        <Layout>
            <div className="w-full min-h-full">
                <PanelBase>
                    <Courses />
                </PanelBase>
            </div>
        </Layout>
    )
}
