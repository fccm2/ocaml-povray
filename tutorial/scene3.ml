module Pov = Povray
module PovColor = Pov.Color

let bg_color = PovColor.RGB(0.2, 0.2, 0.8)
let light_color = PovColor.RGB(1.0, 1.0, 1.0)

let cam_loc = (1.8, 3.2, 2.4)
let look_at = (0.0, 0.6, 0.0)

let () =
  let sc = Pov.new_scene () in
  let sc = Pov.add_background sc ~color:bg_color in
  let sc = Pov.add_camera sc ~location:cam_loc ~look_at () in

  let sc = Pov.add_light_source sc ~location:(6.0, 16.0,  4.0) ~color:light_color in
  let sc = Pov.add_ambient_light sc ~color:(0.2, 0.1, 0.8) in

  let color1 = PovColor.RGB(0.2, 0.4, 0.8) in
  let texture = Pov.new_texture ~color:color1 () in

  let sc =
    Pov.add_sphere sc
       ~center:(0.0, 0.8, 0.0)
       ~radius:0.8
       ~texture () in

  (* blue-checker *)
  let texture =
    let color1 = PovColor.RGB(0.10, 0.30, 0.80) in
    let color2 = PovColor.RGB(0.12, 0.34, 0.86) in
    Pov.new_checker ~color1 ~color2 ()
  in
  let sc = Pov.add_plane sc ~norm:(0, 1, 0) ~dist:(0) ~texture () in

  Pov.print_scene sc;
;;
