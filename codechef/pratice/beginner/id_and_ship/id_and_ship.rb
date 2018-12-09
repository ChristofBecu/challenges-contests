gets.chomp.to_i.times do
  input = gets.chomp.downcase
  case input
  when 'b'
    puts 'BattleShip'
  when 'c'
    puts 'Cruiser'
  when 'd'
    puts 'Destroyer'
  when 'f'
    puts 'Frigate'
  end
end