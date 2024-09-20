
let () =
  let w, h = (360, 260) in  (* (width, height) *)

  let svg = Svg.new_svg_document ~width:w ~height:h () in
  Svg.add_rect svg ~x:0 ~y:0 ~width:w ~height:h ~fill:"#fff" ();

  Svg.add_rect svg ~x:120 ~y:70 ~width:120 ~height:120 ~stroke:"#000" ~fill:"#fff" ~stroke_width:1.0 ();

  Svg.add_line svg ~x1:180 ~y1:20 ~x2:180 ~y2:240
    ~stroke:"#000"
    ~stroke_width:0.8
    ~stroke_opacity:0.8 ();

  Svg.add_line svg ~x1:50 ~y1:130 ~x2:310 ~y2:130
    ~stroke:"#000"
    ~stroke_width:0.8
    ~stroke_opacity:0.8 ();

  Svg.add_circle svg ~cx:120. ~cy:70. ~r:2.6 ~fill:"#000" ();
  Svg.add_circle svg ~cx:240. ~cy:70. ~r:2.6 ~fill:"#000" ();
  Svg.add_circle svg ~cx:240. ~cy:190. ~r:2.6 ~fill:"#000" ();
  Svg.add_circle svg ~cx:120. ~cy:190. ~r:2.6 ~fill:"#000" ();

  Svg.add_circle svg ~cx:180. ~cy:70. ~r:2.6 ~fill:"#F00" ();
  Svg.add_circle svg ~cx:240. ~cy:130. ~r:2.6 ~fill:"#F00" ();

  Svg.add_text svg ~x:245 ~y:125 ~text:"x"
    ~font_size:24.0
    ~fill:"#000"
    ~fill_opacity:1.0 ();

  Svg.add_text svg ~x:160 ~y:60 ~text:"y"
    ~font_size:24.0
    ~fill:"#000"
    ~fill_opacity:1.0 ();

  Svg.add_newline svg;
  Svg.finish_svg svg;
  Svg.print_svg_document svg;
;;

