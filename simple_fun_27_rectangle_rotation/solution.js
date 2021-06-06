function rectangleRotation(a, b){
  let big = Math.max(a, b)
  let small = Math.min(a, b)

  let NE_x_y = Math.floor(Math.sqrt(big * big / 8))
  let width = 2 * NE_x_y + 1
  let half_height = Math.floor(Math.sqrt(small * small / 8))
  let height = 2 * half_height + 1

  let rectangle_1 = width * height

  let hypotenuse = Math.sqrt(2 * NE_x_y * NE_x_y) + 1 / Math.sqrt(2)

  let rectangle_2_w

  if (hypotenuse <= big / 2)
    rectangle_2_w = width + 1
  else
    rectangle_2_w = width - 1

  let rectangle_2_h = 2 * (Math.floor((small / 2 - 1/Math.sqrt(2)) / Math.sqrt(2)) + 1)

  return rectangle_1 + rectangle_2_w * rectangle_2_h
}
