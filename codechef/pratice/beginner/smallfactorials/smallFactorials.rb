class Integer
  def factorial
    self == 0 ? 1 : self * (self-1).factorial
  end
end

gets.chomp.to_i.times do
  puts gets.chomp.to_i.factorial
end