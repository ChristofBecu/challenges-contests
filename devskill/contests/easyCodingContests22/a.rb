gets.chomp.to_i.times do
  b, s, g = gets.chomp.split().map(&:to_i)
  puts medals = b*10 + s*50 + g*100
end