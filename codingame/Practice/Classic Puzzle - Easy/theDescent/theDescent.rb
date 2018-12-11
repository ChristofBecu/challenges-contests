STDOUT.sync = true # DO NOT REMOVE
# The while loop represents the game.
# Each iteration represents a turn of the game
# where you are given inputs (the heights of the mountains)
# and where you have to print an output (the index of the mountain to fire on)
# The inputs you are given are automatically updated according to your last actions.


# game loop
loop do
  maxHeight = 0
  shootAtIndex = 0
  8.times do |currentIndex|
    mountain_h = gets.to_i # represents the height of one mountain.
    if maxHeight < mountain_h
      maxHeight = mountain_h
      shootAtIndex = currentIndex
    end
  end
  puts shootAtIndex
    # Write an action using puts
    # To debug: STDERR.puts "Debug messages..."
    
    #puts "4" # The index of the mountain to fire on.

end