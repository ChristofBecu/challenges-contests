loop do
  mountain_h = [1, 2, 3, 4, 5, 6, 7, 8]

  puts mountain_h

  puts mountain_h.index(mountain_h.max).to_s
  break
  # Write an action using puts
  # To debug: STDERR.puts "Debug messages..."

  # puts "4" # The index of the mountain to fire on.
end

gets.chomp.to_i.times do
  print 8
end

