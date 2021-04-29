import { Edit, Eye } from 'react-feather';

export interface CourseCardProps {
    name: string,
    image: string,
    slug: string,
}


const checkCoursePic = (image, name) => {


    if (image == undefined || image == '') {
        return `https://eu.ui-avatars.com/api/?name=${name}&bold=true`;
    }

    return image;

}

const CourseCard: React.FC<CourseCardProps> = ({ name, slug, image }) => (
    <div className="col-span-2 h-80 shadow rounded-md items-center text-center">
        <img src={checkCoursePic(image, name)} alt={name} className="w-32 rounded-full mt-8" />
        <p className="text-lg font-medium ml-3 mr-3 truncate overflow-ellipsis">{name}</p>
        <p className="text-md">{slug}</p>
        <div className="flex w-full justify-items-center gap-5">
            <div className="text-center w-10 h-10 bg-yellow-300 rounded-md ml-auto">
                <Edit size={20} className="mt-2 text-white" />
            </div>
            <div className="text-center w-10 h-10 bg-green-400 rounded-md mr-auto">
                <Eye size={20} className="mt-2 text-white" />
            </div>
        </div>
    </div>
);

export default CourseCard;