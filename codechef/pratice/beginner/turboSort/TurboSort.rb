arr = Array.new
gets.chomp.to_i.times do
  arr << gets.chomp.to_i
end
puts arr.sort