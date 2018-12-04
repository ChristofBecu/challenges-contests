gets.chomp.to_i.times do
  arr = gets.chomp.split().map(&:to_i)
  max = arr.max
  arr.delete(arr.max)
  puts arr.max
end
