
background { color rgb <0.2, 0.2, 0.8> }

camera {
  location <1.8, 3.2, 2.4>
  look_at  <0, 0.6, 0>
}

light_source { <6, 16, 4> color rgb <1, 1, 1> }

global_settings { ambient_light rgb <0.2, 0.1, 0.8> }

sphere {
  <0, 0.8, 0>, 0.8
  texture {
    pigment { color rgb <0.2, 0.4, 0.8> }
  }
}

plane {
  <0, 1, 0>, 0
  texture {
    pigment {
      checker color rgb <0.1, 0.3, 0.8>, color rgb <0.12, 0.34, 0.86>
    }
  }
}
