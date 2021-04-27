import Layout from '../../components/layout';

const RegisterAccount: React.FC = () => {

    const registerHeadmaster = async event => {
        event.preventDefault()

        const res = await fetch('/api/register', {
            body: JSON.stringify({
                name: event.target.name.value
            }),
            headers: {
                'Content-Type': 'application/json'
            },
            method: 'POST'
        });

        const result: JSON = await res.json();
        // result.user => 'Ada Lovelace'
    }

    return (
        <form onSubmit={registerHeadmaster} className="flex flex-col">
            <input type="text" id="txtName" name="txtName" placeholder="Nome completo..." className="mx-auto rounded border-none w-1/5 h-10 pl-3 py-5 text-lg shadow focus:outline-none ring-2 ring-gray-500 focus:border-transparent" required />
            <input type="email" id="txtEmail" name="txtEmail" placeholder="E-mail..." className="mx-auto mt-5 rounded border-none w-1/5 h-10 pl-3 py-5 text-lg shadow focus:outline-none ring-2 ring-gray-500 focus:border-transparent" required />
            <input type="text" id="txtCC" name="txtCC" placeholder="Cartão de cidadão..." className="mx-auto mt-5 rounded border-none w-1/5 h-10 pl-3 py-5 text-lg shadow focus:outline-none ring-2 ring-gray-500 focus:border-transparent" required />
            <input type="text" id="txtContact" name="txtContact" placeholder="Número de telefone..." className="mx-auto mt-5 rounded border-none w-1/5 h-10 pl-3 py-5 text-lg shadow focus:outline-none ring-2 ring-gray-500 focus:border-transparent" required />
            <input type="date" id="birthday" name="birthday" className="mx-auto mt-5 rounded border-none w-1/5 h-10 pl-3 py-1 text-lg shadow focus:outline-none ring-2 ring-gray-500 focus:border-transparent" required />
            <p className="text-sm align-left mt-5">A password será gerada automaticamente pelo sistema</p>
            <button type="submit" className="mx-auto mt-20 text-lg align-center text-gray-800 font-bold w-48 text-center py-3 rounded-lg border-2 border-solid border-gray-800 bg-white hover:bg-gray-800 hover:text-white transition duration-500 ease-in-out">C R I A R</button>
        </form>
    )
}

export default function Headmaster() {
    return (
        <Layout>
            <div className="min-h-screen min-w-screen flex flex-col my-auto mx-auto justify-center text-center">
                <img src="/logo.svg" alt="App logo" className="w-80 md:w-96 lg:w-96 mx-auto" />
                <p className="text-2xl md:text-3l lg:text-3xl mt-10">Primeiro precisamos que crie uma conta para o <span className="font-bold">diretor</span> da escola</p>
                <RegisterAccount />
                <p className="mt-3">Ainda não tem Days? Compre <a href="#" className="underline">aqui</a>!</p>
            </div>
        </Layout>
    )
}
