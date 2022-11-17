/** @type {import('tailwindcss').Config} */
export default {
  content: [],
  theme: {
    fontFamily: {
      sans: [ "'Space Grotesk', sans-serif" ]
    },
    colors: {
      secondary: "#dfeee3",
      // secondary_gradient: "linear-gradient(0deg, #dfeee3ff)",
      primary: "#965958",
      tertiary: "#A19FBB",
      destruct: "#8E4A49",
      exclaim: "#E0905D",
      success: "#4ED0B6"
    },
    extend: {
      gridTemplateColumns: {
        'header': "1fr 2fr 1fr",
        'player-stats': "2fr 1fr"
      }
    },
  },
  plugins: [],
}
