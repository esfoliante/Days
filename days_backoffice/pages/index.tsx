import Layout from '../components/Layout';

export default function Landing() {
  return (
    <Layout>
      <div className="min-h-screen min-w-screen flex flex-col my-auto mx-auto justify-center text-center">
        <img src="logo.svg" alt="App logo" className="w-80 md:w-96 lg:w-96 mx-auto" />
        <p className="text-2xl md:text-3l lg:text-3xl mt-10"><span className="font-bold">Bem vindo(a)</span> ao futuro das escolas inteligentes</p>
        <a href="login">
          <p className="mx-auto mt-40 align-center text-gray-800 font-bold w-48 text-center py-3 rounded-lg border-2 border-solid border-gray-800 bg-white hover:bg-gray-800 hover:text-white transition duration-500 ease-in-out">E N T R A R</p>
        </a>
        <p className="mt-3">Ainda não tem Days? Compre <a href="#" className="underline">aqui</a>!</p>
      </div>
    </Layout>
  )
}
