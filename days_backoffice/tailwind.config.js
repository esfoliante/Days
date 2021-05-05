module.exports = {
  corePlugins: {
    preflight: false,
  },
  purge: ['./pages/**/*.{js,ts,tsx,jsx}'],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
      fontFamily: {
        display: ['Inter'],
        body: ['Inter'],
      }
    },
  },
  variants: {
    extend: {},
  },
  plugins: [],
}