module Pov = Povray
module PovColor = Pov.Color

let bg_color = PovColor.RGB(0.2, 0.2, 0.8)
let light_color = PovColor.RGB(1.0, 1.0, 1.0)

let cam_loc = (1.8, 4.8, 2.4)
let look_at = (0.0, 0.6, 0.0)

let () =
  let sc = Pov.new_scene () in
  let sc = Pov.add_background sc ~color:bg_color in
  let sc = Pov.add_camera sc ~location:cam_loc ~look_at () in

  let sc = Pov.add_light_source sc ~location:(6.0, 16.0,  4.0) ~color:light_color in

  let color1 = PovColor.RGB(0.2, 1.0, 0.4) in
  let texture = Pov.new_texture ~color:color1 () in

  let sc =
    Pov.add_sphere sc
       ~center:(0.0, 0.2, 0.0)
       ~radius:1.6
       ~texture () in

  Pov.print_scene sc;
;;
