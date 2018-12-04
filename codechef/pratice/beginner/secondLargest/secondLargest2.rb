gets.chomp.to_i.times do
  puts arr = gets.chomp.split().map(&:to_i).sort[-2]
end