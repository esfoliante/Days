import { Menu } from 'react-feather';
import SidebarItem from './SidebarItem';
import * as FeatherIcons from 'react-feather';


const Sidebar: React.FC = props => (
    <div className="w-full sticky min-h-full overflow-y-auto  bg-white bg-opacity-50 text-gray-700 shadow-inner">
        <h1 className="pt-12 pl-10">MENU</h1>
        <div className="grid grid-flow-row mt-5 gap-1">
            <SidebarItem
                icon={<FeatherIcons.Home />}
                title="Home"
                location="/adboard" />
            <SidebarItem
                icon={<FeatherIcons.User />}
                title="Contas"
                location="/adboard/accounts" />
            <SidebarItem
                icon={<FeatherIcons.Tool />}
                title="Cargos"
                location="/adboard/roles" />
            <SidebarItem
                icon={<FeatherIcons.MapPin />}
                title="Salas"
                location="/" />
            <SidebarItem
                icon={<FeatherIcons.BookOpen />}
                title="Cursos"
                location="/adboard/courses" />
            <SidebarItem
                icon={<FeatherIcons.Book />}
                title="Disciplinas"
                location="/" />
            <SidebarItem
                icon={<FeatherIcons.Users />}
                title="Turmas"
                location="/" />
            <SidebarItem
                icon={<FeatherIcons.Calendar />}
                title="Horários"
                location="/" />
            <SidebarItem
                icon={<FeatherIcons.ShoppingBag />}
                title="Refeições"
                location="/" />
            <SidebarItem
                icon={<FeatherIcons.Monitor />}
                title="Entradas e Saídas"
                location="/adboard/entrance" />
            <SidebarItem
                icon={<FeatherIcons.Mail />}
                title="Comunicações"
                location="/adboard/communications" />
        </div>
    </div>
);

export default Sidebar;