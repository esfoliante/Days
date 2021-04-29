import { Edit, Eye } from 'react-feather';

export interface ProfileCardProps {
    name: string,
    image: string,
}


const checkProfilePic = (image, name) => {


    if (image == undefined) {
        return `https://eu.ui-avatars.com/api/?name=${name}&bold=true`;
    }

    return image;

}

const ProfileCard: React.FC<ProfileCardProps> = ({ name, image }) => (
    <div className="col-span-2 h-72 shadow rounded-md items-center text-center">
        <img src={checkProfilePic(image, name)} alt={name} className="w-32 rounded-full mt-8" />
        <p className="text-lg font-medium">{name}</p>
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

export default ProfileCard;