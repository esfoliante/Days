export interface CommunicationProps {
    title: string,
    content: string,
    date: string,
}

const Communication: React.FC<CommunicationProps> = ({ title, content, date }) => (
    <div className="col-span-1 shadow h-32 px-5 rounded-md">
        <div className="flex justify-between space-y-auto items-center space-between">
            <p className="text-2xl font-bold truncate">{title}</p>
            <p className="text-sm font-medium self-center">{date}</p>
        </div>
        <p className="mt-1 truncate">{content}</p>
    </div>
);

export default Communication;