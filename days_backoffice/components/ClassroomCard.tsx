import { Edit, Eye } from 'react-feather';
import Link from 'next/link';
export interface ClassroomCardProps {
    department: string,
    image?: string,
    floor: number,
    classroomNumber: number,
    canEdit?: boolean,
    action: string,
    cardID: number,
}


const checkClassroomPic = (image: string, name: string) => {


    if (image == undefined || image == '') {
        return '/classroom-default.jpg';
    }

    return '/' + image;

}

const checkEdit = (canEdit, action, cardID) => {

    if (canEdit)
        return (
            <div className="grid grid-flow-col place-content-start mt-6 gap-5">
                <Link href={action + '/edit/' + cardID}>
                    <div className="text-center w-10 h-10 bg-yellow-300 rounded-md ml-auto cursor-pointer">
                        <Edit size={20} className="mt-2 text-white" />
                    </div>
                </Link>
                <Link href={action + '/show/' + cardID}>
                    <div className="text-center w-10 h-10 bg-green-400 rounded-md mr-auto cursor-pointer">
                        <Eye size={20} className="mt-2 text-white" />
                    </div>
                </Link>
            </div>
        );

    return (
        <div className="flex">
            <Link href={action + '/show/' + cardID}>
                <div className="text-center w-10 h-10 bg-green-400 rounded-md cursor-pointer">
                    <Eye size={20} className="mt-2 text-white" />
                </div>
            </Link>
        </div>
    );

}

const checkName = (department: string, floor: number, classroomNumber: number) => department + '' + floor + '' + classroomNumber;


const ClassroomCard: React.FC<ClassroomCardProps> = ({ department, floor, classroomNumber, image, canEdit = true, action, cardID }) => (
    <div className="col-span-4 h-60 shadow rounded-md items-center text-left bg-cover bg-center pl-5 text-white" style={{ backgroundImage: `url(` + checkClassroomPic(image, checkName(department, floor, classroomNumber)) + `)` }}>
        <p className="text-xl font-bold mt-5 truncate overflow-ellipsis">{checkName(department, floor, classroomNumber)}</p>
        <p className="mt-2">Bloco <span className="font-bold">{department}</span></p>
        <p>Andar <span className="font-bold">{floor}</span></p>
        <p>Número da sala <span className="font-bold">{classroomNumber}</span></p>
        {checkEdit(canEdit, action, cardID)}
    </div>
);

export default ClassroomCard;