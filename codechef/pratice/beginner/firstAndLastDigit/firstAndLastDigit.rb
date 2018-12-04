class Integer
  def digits
    self.to_s.chars.map(&:to_i)
  end
end

gets.chomp.to_i.times do # T
  number = gets.chomp.to_i.digits
  puts number[0] + number[-1]
end