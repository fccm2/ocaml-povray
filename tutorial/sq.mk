%.png: %.svg
	inkscape --export-type=png --export-filename=$@ $<
