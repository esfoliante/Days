import { Edit, Eye } from 'react-feather';

export interface MealCardProps {
    day: string,
    studentsCount: number,
    canEdit?: boolean,
}

const checkEdit = (canEdit) => {

    if (canEdit)
        return (
            <div className="flex w-full justify-items-center gap-5">
                <div className="text-center w-10 h-10 bg-yellow-300 rounded-md ml-auto">
                    <Edit size={20} className="mt-2 text-white" />
                </div>
                <div className="text-center w-10 h-10 bg-green-400 rounded-md mr-auto">
                    <Eye size={20} className="mt-2 text-white" />
                </div>
            </div>
        );

    return (
        <div className="flex">
            <div className="text-center w-10 h-10 bg-green-400 rounded-md ml-auto mr-auto">
                <Eye size={20} className="mt-2 text-white" />
            </div>
        </div>
    );

}

const MealCard: React.FC<MealCardProps> = ({ day, studentsCount, canEdit = true }) => (
    <div className="col-span-2 h-44 shadow rounded-md items-center text-left">
        <p className="text-lg font-bold truncate overflow-ellipsis px-5">{day}</p>
        <p className="text-lg font-medium truncate overflow-ellipsis px-5">Alunos com refeição <span className="font-bold">{studentsCount}</span></p>
        {checkEdit(canEdit)}
    </div>
);

export default MealCard;