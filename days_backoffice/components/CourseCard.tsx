import { Edit, Eye } from 'react-feather';
import Link from 'next/link';
export interface CourseCardProps {
    name: string,
    image?: string,
    slug: string,
    director: string,
    action: string,
    cardID: number,
}


const checkCoursePic = (image: string, name: string) => {


    if (image == undefined || image == '') {
        return '/course-default.jpg';
    }

    return '/' + image;

}

const CourseCard: React.FC<CourseCardProps> = ({ name, slug, director, image, action, cardID }) => (
    <div className="col-span-4 h-60 shadow rounded-md items-center text-left bg-cover bg-center pl-5" style={{ backgroundImage: `url(` + checkCoursePic(image, name) + `)` }}>
        <p className="text-xl text-white font-bold mt-5 truncate overflow-ellipsis">{name}</p>
        <p className="text-md text-white mt-5">{slug} - <span className="font-medium">{director}</span></p>
        <div className="grid grid-flow-col place-content-start mt-24 gap-5">
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
    </div>
);

export default CourseCard;