gets.chomp.to_i.times do # T
  n = gets.chomp.to_i
  arr = gets.chomp.split.map(&:to_i)
  arr.slice!(n..-1)
  arr.sort!
  puts arr[0] + arr[1]
end
