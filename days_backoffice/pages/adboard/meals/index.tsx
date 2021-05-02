import Section from '../../../components/Section';
import MealCard from '../../../components/MealCard';
import PanelBase from '../../../components/PanelBase';
import Layout from '../../../components/Layout';
import React from 'react';

const Meals: React.FC = () => (
    <Layout>
        <div className="w-full min-h-full">
            <PanelBase>
                <div className="m-10">
                    <Section title="Refeições">
                        <div className="grid grid-flow-row grid-cols-10 gap-5">
                            <MealCard day="02/05/2021" studentsCount={300} />
                            <MealCard day="02/05/2021" studentsCount={300} />
                            <MealCard day="02/05/2021" studentsCount={300} />
                            <MealCard day="02/05/2021" studentsCount={300} />
                            <MealCard day="02/05/2021" studentsCount={300} />
                            <MealCard day="02/05/2021" studentsCount={300} />
                            <MealCard day="02/05/2021" studentsCount={300} />
                            <MealCard day="02/05/2021" studentsCount={300} />
                            <MealCard day="02/05/2021" studentsCount={300} />
                            <MealCard day="02/05/2021" studentsCount={300} />
                        </div>
                        <p className="bg-green-600 p-3 font-medium text-white w-44 rounded-md text-center">Adicionar refeição</p>
                    </Section>
                </div>
            </PanelBase>
        </div>
    </Layout>
);

export default Meals;