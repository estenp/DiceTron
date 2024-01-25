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
      success: "#4ED0B6",
      black: {
        100: "#494152",
        200: "#302937",
        300: "#372F3E",
        400: "#222123",
      },
      gray: "#E8E8E8",
      white: "#F9F4F5",
      purple: {
        100: "#C8B8DB",
        200: "#70587C",
        300: "#502F4C",
      }
    },
    extend: {
      gridTemplateColumns: {
        'header': "1fr 2fr 1fr",
        'player-stats': "2fr 1fr"
      }
    },
  },
}
