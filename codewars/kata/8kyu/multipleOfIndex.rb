def multiple_of_index(arr)
  newarray = []
  (1..arr.size - 1).each { |i| arr[i] % i == 0 ? newarray << arr[i] : next }
  newarray
end
