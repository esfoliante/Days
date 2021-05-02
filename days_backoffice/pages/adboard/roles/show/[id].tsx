import Section from '../../../../components/Section';
import PanelBase from '../../../../components/PanelBase';
import Layout from '../../../../components/Layout';
import React from 'react';
import { Edit } from 'react-feather';
import Link from 'next/link';
import { useRouter } from 'next/router'

const ShowRole: React.FC = () => {
    const router = useRouter();
    const { id } = router.query;

    return (
        <Layout>
            <div className="w-full min-h-full">
                <PanelBase>
                    <div className="m-10">
                        <Section title="Cargos">
                            <div className="flex flex-col">
                                <form action="" className="w-full">
                                    <p>Nome do cargo</p>
                                    <input placeholder="Nome do cargo..." id="txtName" name="txtName" value="Funcionário" className="pl-2 h-10 w-1/5 text-md shadow-inner focus:ring-2 focus:ring-green-600 text-black" disabled />
                                </form><br />
                                <Link href={'/adboard/roles/edit/' + id}>
                                    <div className="text-center w-10 h-10 bg-yellow-300 rounded-md mt-5 cursor-pointer">
                                        <Edit size={20} className="mt-2 text-white" />
                                    </div>
                                </Link>
                            </div>
                        </Section>
                    </div>
                </PanelBase>
            </div>
        </Layout>
    );
}

export default ShowRole;