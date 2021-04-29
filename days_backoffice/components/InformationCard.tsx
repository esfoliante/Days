export interface InformationCardProps {
    title: string,
    content: string,
    icon: object,
}

const InformationCard: React.FC<InformationCardProps> = ({ title, content, icon }) => (
    <div className="bg-white shadow h-32 col-span-1 rounded-md text-black pl-5 flex items-center">
        <div>
            <p className="font-bold text-xl">{title}</p>
            <p className="text-xl">{content}</p>
        </div>
        {icon}
    </div>
);

export default InformationCard;