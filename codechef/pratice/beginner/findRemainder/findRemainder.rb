gets.chomp.to_i.times do #T
    a, b = gets.chomp.split().map(&:to_i)
    puts a % b
end