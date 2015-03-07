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
	"01_Vorwort.md"
	"02_Anforderungsanalyse.md.ect"
	"03_Konzept.md"
	"04_Umsetzung.md"
	"05_Testing.md"
	"06_Ausblick.md"
	"10_Anhang.md"
]
pandoc.stderr.on "data", (data) ->
	console.error data.toString "utf-8"
for file in files
	pandoc.stdin.write precompileAndRead file

pandoc.stdin.end()
