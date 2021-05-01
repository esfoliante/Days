export interface EntranceIconProps {
    image: string,
    name: string,
    time: string,
    isEntrance: boolean
}

const getImage = ({ image, isEntrance }) => {

    image = '/' + image;

    if (isEntrance) {
        return (<img src={image} alt="Profile pic" className="w-20 h-20 rounded-full ring-4 ring-green-500" />);
    }

    return (<img src={image} alt="Profile pic" className="w-20 h-20 rounded-full ring-4 ring-red-500" />);

}

const checkAction = ({ isEntrance }) => {

    if (isEntrance)
        return 'Entrada';

    return 'Saída'

}

const EntranceIcon: React.FC<EntranceIconProps> = ({ image, name, time, isEntrance }) => (
    <div className="flex">
        {getImage({ image, isEntrance })}
        <div className="ml-4 w-32">
            <p className="text-sm font-bold truncate overflow-ellipsis">{name}</p>
            <p className="text-sm ">{time} - {checkAction({ isEntrance })}</p>
        </div>
    </div>
);

export default EntranceIcon;