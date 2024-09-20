module Pov = Povray
module PovColor = Pov.Color

let bg_color = PovColor.RGB(0.2, 0.1, 0.4)

let cam_loc = (1.8, 4.8, 2.4)
let look_at = (0.0, 0.6, 0.0)

let () =
  let sc = Pov.new_scene () in
  let sc = Pov.add_background sc ~color:bg_color in
  let sc = Pov.add_camera sc ~location:cam_loc ~look_at () in

  Pov.print_scene sc;
;;
