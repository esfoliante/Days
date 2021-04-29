import { Menu } from 'react-feather';
import SidebarItem from './SidebarItem';
import * as FeatherIcons from 'react-feather';


const Sidebar: React.FC = props => (
    <div className="w-full sticky min-h-full overflow-y-auto  bg-white bg-opacity-50 text-gray-700 shadow-inner">
        <h1 className="pt-12 pl-10">MENU</h1>
        <div className="grid grid-flow-row mt-5 gap-1">
            <SidebarItem
                icon={<FeatherIcons.Home />}
                title="Home" />
            <SidebarItem
                icon={<FeatherIcons.User />}
                title="Contas" />
            <SidebarItem
                icon={<FeatherIcons.Tool />}
                title="Cargos" />
            <SidebarItem
                icon={<FeatherIcons.MapPin />}
                title="Salas" />
            <SidebarItem
                icon={<FeatherIcons.BookOpen />}
                title="Cursos" />
            <SidebarItem
                icon={<FeatherIcons.Book />}
                title="Disciplinas" />
            <SidebarItem
                icon={<FeatherIcons.Users />}
                title="Turmas" />
            <SidebarItem
                icon={<FeatherIcons.Calendar />}
                title="Horários" />
            <SidebarItem
                icon={<FeatherIcons.ShoppingBag />}
                title="Refeições" />
            <SidebarItem
                icon={<FeatherIcons.Monitor />}
                title="Entradas e Saídas" />
            <SidebarItem
                icon={<FeatherIcons.Mail />}
                title="Comunicados" />
        </div>
    </div>
);

export default Sidebar;