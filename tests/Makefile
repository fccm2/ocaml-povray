# anti-aliasing
#AA = +A
AA =

#EXT = pov
EXT = png

SIZE = +W680 +H440
DIR = ../src

all:
	$(MAKE) test EXT=pov
	$(MAKE) test EXT=png

%.pov: %.ml
	ocaml -I $(DIR) povray.cma $< > $@

%.png: %.pov
	povray Display=false $(SIZE) -V $(AA) +I$<

#	display $@

test: \
    test_md.$(EXT)   \
    test_mc1.$(EXT)  \
    test_mc2.$(EXT)  \
    test_md2.$(EXT)  \
    test_poly.$(EXT) \
    test_fish.$(EXT) \
    #Eol

clean:
	$(RM) *.png
	$(RM) *.pov

