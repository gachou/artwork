export PATH := ./node_modules/.bin:$(PATH)

	
all: dist/favicon.ico dist/warau-logo.png dist/warau-logo.svg

dist: 
	mkdir -p dist

dist/favicon.ico: svg/favicon.svg dist Makefile
	svgexport $< $@
	
dist/warau-logo.png: svg/warau-logo.svg dist Makefile
	svgexport $< $@ -20:-20:140:140 
	
dist/warau-logo.svg: svg/warau-logo.svg dist Makefile
	svgo --input=$< --output=$@
