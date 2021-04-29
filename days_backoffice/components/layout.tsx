import Head from 'next/head';

const Layout: React.FC = props => (
  <div>
    <Head>
      <title>Days</title>
      <link
        rel="preload"
        href="/fonts/Inter/Inter-Regular.ttf"
        as="font"
        crossOrigin=""
      />
      <link
        rel="preload"
        href="/fonts/Inter/Inter-Medium.ttf"
        as="font"
        crossOrigin=""
      />
      <link
        rel="preload"
        href="/fonts/Inter/Inter-Bold.ttf"
        as="font"
        crossOrigin=""
      />
    </Head>
    <div className="font-display min-h-screen">
      {props.children}
    </div>
  </div>
);

export default Layout;