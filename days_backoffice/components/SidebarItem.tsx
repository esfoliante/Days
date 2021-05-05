import Link from 'next/link';
import { useRouter } from "next/router";
import React, { useEffect, useState } from "react";
export interface SidebarItemProps {
    icon: Object,
    title: string,
    location: string;
}

const SidebarItem: React.FC<SidebarItemProps> = ({ icon, title, location }) => {

    const router = useRouter();

    const [className, setClassName] = useState(
        "grid h-14 w-full hover:bg-gray-300 hover:bg-opacity-40 pl-10 cursor-pointer items-center transition duration-200 ease-in-out"
    );

    useEffect(() => {
        if (window.location.pathname === location) {
            setClassName(`${className} text-green-500`);
        }

        if (location == '/') {
            setClassName(`${className} line-through text-gray-300`);
        }
    }, []);


    return (
        <Link href={location}>
            <div className={className}>
                <div className="flex items-center gap-4">
                    <div className="ml-5">{icon}</div>
                    <p className="font-medium">{title}</p>
                </div>
            </div>
        </Link>
    );
}

export default SidebarItem;