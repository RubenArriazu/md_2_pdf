$IN = "entrada.md"
$OUT = "salida.pdf"

docker run --rm --volume $pwd\:/data $IN `
--lua-filter=scholarly-metadata.lua  --lua-filter=format-authors.lua `
-o $OUT
