import * as elmTailwindModules from "elm-tailwind-modules";
import autoprefixer from "autoprefixer";
import typography from "@tailwindcss/typography";
import forms from "@tailwindcss/forms";
import aspectRatio from "@tailwindcss/aspect-ratio";
import config from "./tailwind.config.js"


// Run elm-tailwind-modules

elmTailwindModules.run({
    directory: "gen",
    moduleName: "Tailwind",
    postcssPlugins: [autoprefixer],
    tailwindConfig: {
        variants: [],
        purge: false,
        ...config,
        plugins: [
            typography,
            forms({ strategy: "class" }),
            aspectRatio,
        ]
    }
});
