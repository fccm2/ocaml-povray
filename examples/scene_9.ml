module Pov = Povray
module PovColor = Pov.Color
module PovMesh = Pov.Mesh
module Povf = Pov.Float

let a = (1.2, 1.2, 1.2)
let b = (1.2, 1.2, -1.2)
let c = (1.2, -1.2, -1.2)
let d = (1.2, -1.2, 1.2)

let e = (-1.2, 1.2, 1.2)
let f = (-1.2, 1.2, -1.2)
let g = (-1.2, -1.2, -1.2)
let h = (-1.2, -1.2, 1.2)

let triangles = [
  (a, b, c); (a, c, d);  (* top side *)
  (e, f, g); (e, g, h);  (* bottom side *)
  (c, d, h); (c, h, g);  (* left side *)
  (a, b, e); (b, e, f);  (* right side *)
  (d, a, h); (h, a, e);  (* front side *)
  (c, b, a); (a, b, f);  (* back side *)
]

let light_color = PovColor.RGB(1.0, 1.0, 1.0)
let bg_color = PovColor.RGB(0.2, 0.4, 0.8)

let mesh_color = PovColor.RGB(0.6, 0.7, 0.8)

let () =
  print_string (Pov.get_background ~color:bg_color);
  print_string (Pov.get_camera ~location:(2., 3., 4.) ~look_at:(0., 0.66, 0.) ());
  print_string (Pov.get_light_source ~location:(3.0, 4.0, 6.0) ~color:light_color);

  let texture = Pov.new_texture ~color:mesh_color () in
  print_string (PovMesh.get_mesh ~triangles ~texture ());
;;

