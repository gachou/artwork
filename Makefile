export PATH := m./node_modules/.bin:$(PATH)

	
all: dist/favicon.ico dist/warau-logo.png dist/warau-logo.svg

dist: 
	mkdir -p dist

dist/favicon.ico: svg/warau-logo.svg dist Makefile
	svgexport $< $@ 32:
	
dist/warau-logo.png: svg/warau-logo.svg dist Makefile
	svgexport $< $@ 100:100 pad
	
dist/warau-logo.svg: src/warau-logo.svg dist Makefile
	svgo --input=$< --output=$@