class Integer
  def trailingZeroesOfFactorial
    if self < 5
      0
    else
      base = 5
      counter = 0
      while base <= self
        counter += self / base
        base *= 5
      end
      counter
    end
  end
end

gets.chomp.to_i.times do
  puts gets.chomp.to_i.trailingZeroesOfFactorial
end
