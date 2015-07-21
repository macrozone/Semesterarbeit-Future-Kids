defaultArgs = "-V documentclass=article -H zhawsettings.tex -o out.pdf --table-of-contents --listing --filter pandoc-citeproc --number-sections -s --template=template.latex"
spawn = require("child_process").spawn
path = require('path')
fs = require "fs"
ect = require("ect")()

Pandoc = 
	spawn: (additionalArgs = []) ->
		spawn "pandoc", defaultArgs.split(" ").concat additionalArgs

precompileAndRead = (file) ->
	switch path.extname file
		when ".ect" then ect.render file
		else fs.readFileSync file

pandoc = Pandoc.spawn ["-o", "out.pdf"]

files = [
	"metadata.yaml"
	"010_Vorwort.md"
	"020_Einleitung.md.ect"
	"030_Anforderungsanalyse.ect"
	"040_Ist_Analyse.md"
	"042_nfr.ect"
	"043_results.md"
	"045_Konzept.md"
	"060_Design.md"
	"070_Umsetzung.md.ect"
	"080_Testing.md.ect"
	"090_Ausblick.md"
	"100_Anhang.md"
]
pandoc.stderr.on "data", (data) ->
	console.error data.toString "utf-8"
for file in files
	pandoc.stdin.write precompileAndRead file

pandoc.stdin.end()
