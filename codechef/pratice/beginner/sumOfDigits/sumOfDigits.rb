class Integer
  def sumOfDigits
    self.to_s.chars.map(&:to_i).inject :+
  end
end

gets.chomp.to_i.times do 
  puts gets.chomp.to_i.sumOfDigits
end