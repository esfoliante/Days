import { url } from 'node:inspector';
import { Edit, Eye } from 'react-feather';

export interface CourseCardProps {
    name: string,
    image?: string,
    slug: string,
    director: string,
}


const checkCoursePic = (image: string, name: string) => {


    if (image == undefined || image == '') {
        return '/course-default.jpg';
    }

    return '/' + image;

}

const CourseCard: React.FC<CourseCardProps> = ({ name, slug, director, image }) => (
    <div className="col-span-4 h-60 shadow rounded-md items-center text-left bg-cover bg-center pl-5" style={{ backgroundImage: `url(` + checkCoursePic(image, name) + `)` }}>
        <p className="text-xl text-white font-bold mt-5 truncate overflow-ellipsis">{name}</p>
        <p className="text-md text-white mt-5">{slug} - <span className="font-medium">{director}</span></p>\
        <div className="grid grid-flow-col place-content-start mt-14 gap-5">
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