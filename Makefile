all: dist/favicon.ico dist/warau-logo.png Makefile

dist/favicon.ico: src/warau-logo.svg
	mkdir -p dist
	convert -background none $< -resize 32x32 $@
	
dist/warau-logo.png: src/warau-logo.svg Makefile
	mkdir -p dist
	convert -background none $< -resize 200x200 $@