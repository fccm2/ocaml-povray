
background { color rgb <0.2, 0.2, 0.8> }

camera {
  location <1.8, 4.8, 2.4>
  look_at  <0, 0.6, 0>
}

light_source { <6, 16, 4> color rgb <1, 1, 1> }

sphere {
  <0, 0.2, 0>, 1.6
  texture {
    pigment { color rgb <0.2, 1, 0.4> }
  }
}
