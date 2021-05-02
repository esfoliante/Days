import PanelBase from '../../../components/PanelBase';
import Layout from '../../../components/Layout';
import React from 'react';
import Communication from '../../../components/Communication';


const Communications: React.FC = () => (
    <Layout>
        <div className="w-full min-h-full">
            <PanelBase>
                <div className="m-10 h-full">
                    <p className="text-3xl font-bold">Comunicações</p>
                    <div className="grid grid-flow-row grid-cols-1 mt-10 gap-y-5">
                        <Communication
                            title="Comunicado super importante"
                            content="Quando sentia na casa a voz de rezas, fugia, ia para o fundo da quinta, sob as trepadeiras do mirante, ler o seu Voltaire: ou então partia a desabafar com o seu velho amigo, o coronel Sequeira, que vivia numa quinta a Queluz."
                            date="2021/05/01"
                        />
                        <Communication
                            title="Comunicado super importante"
                            content="Quando sentia na casa a voz de rezas, fugia, ia para o fundo da quinta, sob as trepadeiras do mirante, ler o seu Voltaire: ou então partia a desabafar com o seu velho amigo, o coronel Sequeira, que vivia numa quinta a Queluz."
                            date="2021/05/01"
                        />
                        <Communication
                            title="Comunicado super importante"
                            content="Quando sentia na casa a voz de rezas, fugia, ia para o fundo da quinta, sob as trepadeiras do mirante, ler o seu Voltaire: ou então partia a desabafar com o seu velho amigo, o coronel Sequeira, que vivia numa quinta a Queluz."
                            date="2021/05/01"
                        />
                        <Communication
                            title="Comunicado super importante"
                            content="Quando sentia na casa a voz de rezas, fugia, ia para o fundo da quinta, sob as trepadeiras do mirante, ler o seu Voltaire: ou então partia a desabafar com o seu velho amigo, o coronel Sequeira, que vivia numa quinta a Queluz."
                            date="2021/05/01"
                        />
                    </div>
                    <p className="bg-green-600 p-3 font-medium text-white w-48 rounded-md text-center">Criar comunicação</p>
                </div>
            </PanelBase>
        </div>
    </Layout>
);

export default Communications;