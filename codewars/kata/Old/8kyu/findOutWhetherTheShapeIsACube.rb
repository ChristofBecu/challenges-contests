def cube_checker(volume, side)
  volume.negative? || side.negative? || side == 0 ? false : (volume/side)/side == side ? true : false
end