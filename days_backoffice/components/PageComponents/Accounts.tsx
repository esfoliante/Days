import Section from '../../components/Section';
import ProfileCard from '../../components/ProfileCard';

const Accounts: React.FC = () => (
    <div className="m-10">
        <p className="text-3xl font-bold">Contas</p>
        <div className="mt-10">
            <Section title="Professores">
                <div className="grid grid-flow-row grid-cols-10 gap-5">
                    <ProfileCard name="João Pecados" image="teacher.png" />
                    <ProfileCard name="João Pecados" image="teacher.png" />
                    <ProfileCard name="João Pecados" image="teacher.png" />
                    <ProfileCard name="João Pecados" image="teacher.png" />
                    <ProfileCard name="João Pecados" image="teacher.png" />
                    <ProfileCard name="João Pecados" image="teacher.png" />
                    <ProfileCard name="João Pecados" image="teacher.png" />
                    <ProfileCard name="João Pecados" image="teacher.png" />
                    <ProfileCard name="João Pecados" image="teacher.png" />
                    <ProfileCard name="João Pecados" image="teacher.png" />
                </div>
            </Section>
            <Section title="Funcionários">
                <div className="grid grid-flow-row grid-cols-10 gap-5">
                    <ProfileCard name="Pedrinho Abrunhosa" />
                    <ProfileCard name="Pedrinho Abrunhosa" image="profile.jpg" />
                    <ProfileCard name="Pedrinho Abrunhosa" image="profile.jpg" />
                    <ProfileCard name="Pedrinho Abrunhosa" image="profile.jpg" />
                    <ProfileCard name="Pedrinho Abrunhosa" image="profile.jpg" />
                    <ProfileCard name="Pedrinho Abrunhosa" image="profile.jpg" />
                    <ProfileCard name="Pedrinho Abrunhosa" image="profile.jpg" />
                    <ProfileCard name="Pedrinho Abrunhosa" image="profile.jpg" />
                    <ProfileCard name="Pedrinho Abrunhosa" image="profile.jpg" />
                    <ProfileCard name="Pedrinho Abrunhosa" image="profile.jpg" />
                </div>
            </Section>
        </div>
    </div>
);

export default Accounts;