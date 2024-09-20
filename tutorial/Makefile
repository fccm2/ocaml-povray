# anti-aliasing
#AA =
AA = +A
SIZE = +W360 +H220

%.pov: %.ml
	ocaml -I ../src povray.cma $< > $@

%.png: %.pov
	povray $(SIZE) -V $(AA) +I$<

#	display $@
#	ls $@

clean:
	$(RM) *.png
	$(RM) *.pov

