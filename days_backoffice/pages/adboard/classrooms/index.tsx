import ClassroomCard from '../../../components/ClassroomCard';
import PanelBase from '../../../components/PanelBase';
import Layout from '../../../components/Layout';
import React from 'react';


const Courses: React.FC = () => (
    <Layout>
        <div className="w-full min-h-full">
            <PanelBase>
                <div className="m-10">
                    <p className="text-3xl font-bold">Salas de aula</p>
                    <div className="mt-10">
                        <div className="grid grid-flow-row grid-cols-10 gap-5">
                            <ClassroomCard department="B" floor={3} classroomNumber={8} image="classroom-preview.jpg" action="classrooms" cardID={1} />
                            <ClassroomCard department="B" floor={3} classroomNumber={8} image="classroom-preview.jpg" action="classrooms" cardID={1} />
                            <ClassroomCard department="B" floor={3} classroomNumber={8} image="classroom-preview.jpg" action="classrooms" cardID={1} />
                            <ClassroomCard department="B" floor={3} classroomNumber={8} image="classroom-preview.jpg" action="classrooms" cardID={1} />
                            <ClassroomCard department="B" floor={3} classroomNumber={8} image="classroom-preview.jpg" action="classrooms" cardID={1} />
                            <ClassroomCard department="B" floor={3} classroomNumber={8} action="classrooms" cardID={1} />
                            <ClassroomCard department="B" floor={3} classroomNumber={8} action="classrooms" cardID={1} />
                            <ClassroomCard department="B" floor={3} classroomNumber={8} action="classrooms" cardID={1} />
                            <ClassroomCard department="B" floor={3} classroomNumber={8} action="classrooms" cardID={1} />
                            <ClassroomCard department="B" floor={3} classroomNumber={8} action="classrooms" cardID={1} />

                        </div>
                        <p className="bg-green-600 p-3 font-medium text-white w-48 rounded-md text-center">Adicionar sala de aula</p>
                    </div>
                </div>
            </PanelBase>
        </div>
    </Layout>
);

export default Courses;