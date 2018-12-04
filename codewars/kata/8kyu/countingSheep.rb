def countSheeps(array)
  n = 0
  array.each do |x|
    n += 1 if x == true
  end
  n
end
