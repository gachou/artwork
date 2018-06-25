export PATH := ./node_modules/.bin:$(PATH)

	
all: dist/favicon.ico dist/100x100/gachou-logo.png dist/200x200/gachou-logo.png dist/100x100/gachou-logo-5-errors.png dist/200x200/gachou-logo-5-errors.png dist/gachou-logo.svg dist/gachou-logo-5-errors.svg

dist: 
	mkdir -p dist/200x200 dist/100x100

dist/favicon.ico: svg/favicon.svg dist Makefile
	inkscape $< --export-png=$@ 
	
dist/200x200/gachou-logo-5-errors.png: svg/gachou-logo-5-errors.svg dist Makefile
	inkscape $< --export-png=$@ 
	
dist/100x100/gachou-logo-5-errors.png: svg/gachou-logo-5-errors.svg dist Makefile
	inkscape $< --export-png=$@ --export-height=100 --export-width=100 

dist/200x200/gachou-logo.png: svg/gachou-logo.svg dist Makefile
	inkscape $< --export-png=$@ 
	
dist/100x100/gachou-logo.png: svg/gachou-logo.svg dist Makefile
	inkscape $< --export-png=$@ --export-height=100 --export-width=100 


dist/gachou-logo.svg: svg/gachou-logo.svg dist Makefile
	svgo --input=$< --output=$@

dist/gachou-logo-5-errors.svg: svg/gachou-logo-5-errors.svg dist Makefile
	svgo --input=$< --output=$@

