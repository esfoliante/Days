import { Menu } from 'react-feather';
import Sidebar from './Sidebar';
import React from 'react';
import Link from 'next/link'

let sidebar: any = React.createRef();
let state: boolean = false;

const sidebarState = () => {

    if (state) {
        sidebar.current.classList.remove('hidden');
    } else {
        sidebar.current.classList.add('hidden');
    }

    state = !state;

}

const PanelBase: React.FC = ({ children }) => (
    <div className="min-h-screen w-full flex">
        <div ref={sidebar} className="w-96 md:w-1/4 lg:w-1/4 min-h-screen">
            <Sidebar />
        </div>
        <div className="w-full">
            <div className="flex items-center justify-between space-y-auto px-10 w-full shadow-sm h-16">
                <Menu className="text-gray-800 cursor-pointer" size={32} onClick={sidebarState} />
                <Link href="/">
                    <p className="cursor-pointer">Sair</p>
                </Link>
            </div>

            {children}
        </div>
    </div>
);

export default PanelBase;

