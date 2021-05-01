import PanelBase from '../../components/PanelBase';
import Layout from '../../components/Layout';
import EntranceIcon from '../../components/EntranceIcon';
import React from 'react';

const Entrance: React.FC = () => (
    <Layout>
        <div className="w-full min-h-full">
            <PanelBase>
                <div className="m-10 h-5/6">
                    <p className="text-3xl font-bold">Entradas e Saidas</p>
                    <div className="col-span-12 h-5/6 shadow rounded-md pl-5">
                        <div className="pt-5">
                            <div className="grid grid-flow-row grid-cols-4 gap-10">
                                <EntranceIcon image="profile.jpg" name="Pedrinho Abrunhosa" time="08:00" isEntrance={true} />
                                <EntranceIcon image="profile.jpg" name="Pedrinho Arrojado" time="08:00" isEntrance={true} />
                                <EntranceIcon image="profile.jpg" name="Pedrinho Fixe" time="08:00" isEntrance={false} />
                                <EntranceIcon image="profile.jpg" name="Pedrinho jdhjshkfjhsjkfhkjshfjshfkjdhs" time="08:00" isEntrance={true} />
                                <EntranceIcon image="profile.jpg" name="Pedrinho Sem overflow" time="08:00" isEntrance={false} />
                                <EntranceIcon image="profile.jpg" name="Pedrinho Grande Cena" time="08:00" isEntrance={false} />
                                <EntranceIcon image="profile.jpg" name="Pedrinho Sem Dados" time="08:00" isEntrance={true} />
                                <EntranceIcon image="profile.jpg" name="Pedrinho Marginal" time="08:00" isEntrance={false} />
                                <EntranceIcon image="profile.jpg" name="Pedrinho Grande Cena" time="08:00" isEntrance={false} />
                                <EntranceIcon image="profile.jpg" name="Pedrinho Sem Dados" time="08:00" isEntrance={true} />
                                <EntranceIcon image="profile.jpg" name="Pedrinho Marginal" time="08:00" isEntrance={false} />
                                <EntranceIcon image="profile.jpg" name="Pedrinho Marginal" time="08:00" isEntrance={false} />
                                <EntranceIcon image="profile.jpg" name="Pedrinho Sem Dados" time="08:00" isEntrance={true} />
                                <EntranceIcon image="profile.jpg" name="Pedrinho Marginal" time="08:00" isEntrance={false} />
                                <EntranceIcon image="profile.jpg" name="Pedrinho Grande Cena" time="08:00" isEntrance={false} />
                                <EntranceIcon image="profile.jpg" name="Pedrinho Sem Dados" time="08:00" isEntrance={true} />
                                <EntranceIcon image="profile.jpg" name="Pedrinho Marginal" time="08:00" isEntrance={false} />
                                <EntranceIcon image="profile.jpg" name="Pedrinho Marginal" time="08:00" isEntrance={false} />
                                <EntranceIcon image="profile.jpg" name="Pedrinho Sem Dados" time="08:00" isEntrance={true} />
                                <EntranceIcon image="profile.jpg" name="Pedrinho Marginal" time="08:00" isEntrance={false} />
                            </div>
                        </div>
                    </div>
                </div>
            </PanelBase>
        </div>
    </Layout>
);

export default Entrance;