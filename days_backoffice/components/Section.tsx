export interface SectionProps {
    title: string,
}

const Section: React.FC<SectionProps> = ({ title, children }) => (
    <div className="">
        <p className="text-2xl font-bold">{title}</p>
        <div className="mt-5">
            {children}
        </div>
    </div>
);

export default Section;