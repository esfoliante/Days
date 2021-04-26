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
    <body className="font-display">
      {props.children}
    </body>
  </div>
);

export default Layout;