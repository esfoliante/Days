import { url } from 'node:inspector';
import { Edit, Eye } from 'react-feather';

export interface ClassroomCardProps {
    department: string,
    image?: string,
    floor: number,
    classroomNumber: number,
}


const checkClassroomPic = (image: string, name: string) => {


    if (image == undefined || image == '') {
        return '/classroom-default.jpg';
    }

    return '/' + image;

}

const checkName = (department: string, floor: number, classroomNumber: number) => department + '' + floor + '' + classroomNumber;


const ClassroomCard: React.FC<ClassroomCardProps> = ({ department, floor, classroomNumber, image }) => (
    <div className="col-span-4 h-60 shadow rounded-md items-center text-left bg-cover bg-center pl-5 text-white" style={{ backgroundImage: `url(` + checkClassroomPic(image, checkName(department, floor, classroomNumber)) + `)` }}>
        <p className="text-xl font-bold mt-5 truncate overflow-ellipsis">{checkName(department, floor, classroomNumber)}</p>
        <p className="mt-2">Bloco <span className="font-bold">{department}</span></p>
        <p>Andar <span className="font-bold">{floor}</span></p>
        <p>Número da sala <span className="font-bold">{classroomNumber}</span></p>
        <div className="grid grid-flow-col place-content-start mt-6 gap-5">
            <div className="text-center w-10 h-10 bg-yellow-300 rounded-md ml-auto">
                <Edit size={20} className="mt-2 text-white" />
            </div>
            <div className="text-center w-10 h-10 bg-green-400 rounded-md mr-auto">
                <Eye size={20} className="mt-2 text-white" />
            </div>
        </div>
    </div>
);

export default ClassroomCard;