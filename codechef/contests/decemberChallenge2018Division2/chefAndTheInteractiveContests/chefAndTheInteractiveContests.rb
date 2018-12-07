n, r = gets.chomp.split().map(&:to_i)
n.times do
  puts gets.chomp.to_i < r ? "Bad boi" : "Good boi"
end