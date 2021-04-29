import PanelBase from '../../components/PanelBase';
import Layout from '../../components/Layout';
import HomePage from '../../components/PageComponents/Home';
import React from 'react';
import Accounts from '../../components/PageComponents/Accounts';

export default function Home() {
    return (
        <Layout>
            <div className="w-full min-h-full">
                <PanelBase>
                </PanelBase>
            </div>
        </Layout>
    )
}
