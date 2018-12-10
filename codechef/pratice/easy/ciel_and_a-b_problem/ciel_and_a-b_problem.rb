class Integer
  def wrong_digit
    s = self.to_s
    n = s[-1].to_i + rand(2..9)
    n = n.to_s[-1]
    s[-1] = n
    s.to_i
  end
end

puts gets.chomp.split.map(&:to_i).inject(:-).wrong_digit
