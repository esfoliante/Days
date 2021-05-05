import { Edit, Eye } from 'react-feather';
import Link from 'next/link';
export interface ProfileCardProps {
    name: string,
    image?: string,
    canEdit?: boolean,
    action: string,
    cardID: number,
}


const checkProfilePic = (image, name) => {


    if (image == undefined || image == '') {
        return `https://eu.ui-avatars.com/api/?name=${name}&bold=true`;
    }

    return '/' + image;

}

const checkEdit = (canEdit, action, cardID) => {

    if (canEdit)
        return (
            <div className="flex w-full justify-items-center gap-5">
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
                <div className="text-center w-10 h-10 bg-green-400 rounded-md ml-auto mr-auto cursor-pointer">
                    <Eye size={20} className="mt-2 text-white" />
                </div>
            </Link>
        </div>
    );

}

const ProfileCard: React.FC<ProfileCardProps> = ({ name, image, canEdit = true, action, cardID }) => (
    <div className="col-span-2 h-72 shadow rounded-md items-center text-center">
        <img src={checkProfilePic(image, name)} alt={name} className="w-32 h-32 rounded-full mt-8" />
        <p className="text-lg font-medium truncate overflow-ellipsis px-5">{name}</p>
        {checkEdit(canEdit, action, cardID)}
    </div>
);

export default ProfileCard;