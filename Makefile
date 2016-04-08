export PATH := ./node_modules/.bin:$(PATH)

	
all: dist/favicon.ico dist/gachou-logo.png dist/gachou-logo.svg

dist: 
	mkdir -p dist

dist/favicon.ico: svg/favicon.svg dist Makefile
	inkscape $@ --export-png=$< 
	
dist/gachou-logo.png: svg/gachou-logo.svg dist Makefile
	svgexport $@ --export-png=$< 
	
dist/gachou-logo.svg: svg/gachou-logo.svg dist Makefile
	svgo --input=$< --output=$@
