export interface SidebarItemProps {
    icon: Object,
    title: string,
}

const SidebarItem: React.FC<SidebarItemProps> = ({ icon, title }) => (
    <div className="grid h-14 w-full hover:bg-gray-300 hover:bg-opacity-40 pl-10 cursor-pointer items-center transition duration-200 ease-in-out">
        <div className="flex items-center gap-4">
            <div className="ml-5">{icon}</div>
            <p className="font-medium">{title}</p>
        </div>
    </div>
);

export default SidebarItem;