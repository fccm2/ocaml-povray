lib: povray.cma
opt: povray.cmxa

povray.cmi: povray.mli
	ocamlc -c $<

povray.cmo: povray.ml povray.cmi
	ocamlc -c $<

povray.cma: povray.cmo povray.cmi
	ocamlc -a -o $@ $<

povray.cmx: povray.ml povray.cmi
	ocamlopt -c $<

povray.cmxa: povray.cmx povray.cmi
	ocamlopt -a -o $@ $<

doc: povray.cmi
	mkdir -p doc
	ocamldoc -html -d doc povray.mli

clean:
	$(RM) *.[oa] *.cm[ioxa] *.cmx[as]
