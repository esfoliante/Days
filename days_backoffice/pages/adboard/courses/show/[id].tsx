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
                        <Section title="Cursos">
                            <div className="flex flex-col">
                                <form action="" className="w-full">
                                    <p>Nome do curso</p>
                                    <input placeholder="Nome do curso..." id="txtName" name="txtName" defaultValue="Informática e Tecnologias Multimédia" className="pl-2 h-10 w-1/5 x-auto rounded border-none py-5 shadow ring-2 ring-gray-500 bg-white" disabled />
                                    <p>Acrónimo</p>
                                    <input placeholder="Acrónimo..." id="txtSlug" name="txtSlug" defaultValue="ITM" className="pl-2 h-10 w-1/5 x-auto rounded border-none py-5 shadow ring-2 ring-gray-500 bg-white" disabled />
                                    <p>Diretor(a) de curso</p>
                                    <input placeholder="Diretor(a) de curso..." id="txtCourseDirector" name="txtCourseDirector" defaultValue="Maria José Costa" className="pl-2 h-10 w-1/5 x-auto rounded border-none py-5 shadow ring-2 ring-gray-500 bg-white" disabled />
                                </form><br />
                                <Link href={'/adboard/courses/edit/' + id}>
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