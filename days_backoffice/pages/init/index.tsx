import Layout from '../../components/layout';
import ReactCodeInput from 'react-code-input';

const CodeForm: React.FC = () => {

    const validateCode = async event => {
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
        <form onSubmit={validateCode} className="flex flex-col">
            <ReactCodeInput type='text' fields={10} />
            <button type="submit" className="mx-auto mt-40 text-lg align-center text-gray-800 font-bold w-48 text-center py-3 rounded-lg border-2 border-solid border-gray-800 bg-white hover:bg-gray-800 hover:text-white transition duration-500 ease-in-out">V A L I D A R</button>
        </form>
    )
}

export default function Init() {
    return (
        <Layout>
            <div className="min-h-screen min-w-screen flex flex-col my-auto mx-auto justify-center text-center">
                <img src="logo.svg" alt="App logo" className="w-80 md:w-96 lg:w-96 mx-auto" />
                <p className="text-2xl md:text-3l lg:text-3xl mt-10">Antes demais ative o <span className="font-bold">código</span> do produto</p>
                <CodeForm />
                <p className="mt-3">Ainda não tem Days? Compre <a href="#" className="underline">aqui</a>!</p>
            </div>
        </Layout>
    )
}
