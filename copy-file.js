const fs = require("fs");
fs.copyFileSync("./src/Defaults/baileys-version.json", "./lib/Defaults/baileys-version.json");
fs.unlinkSync(__filename)
