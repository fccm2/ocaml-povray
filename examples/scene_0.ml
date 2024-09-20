module Pov = Povray
module PovColor = Pov.Color

let () =
  let sc = Pov.new_scene () in

  let sc = Pov.add_background sc ~color:(PovColor.RGB(0.2, 0.4, 0.8)) in
  let sc = Pov.add_camera sc ~location:(0., 2., -3.) ~look_at:(0., 1., 2.) () in
  let sc = Pov.add_light_source sc ~location:(2., 4., -3.) ~color:(PovColor.RGB(1.0, 1.0, 1.0)) in

  let texture = Pov.new_texture ~color:(PovColor.RGB(1.0, 1.0, 0.0)) () in

  let sc = Pov.add_sphere sc ~center:(0.0, 1.0, 2.0) ~radius:1.2 ~texture () in

  Pov.print_scene sc;
;;

