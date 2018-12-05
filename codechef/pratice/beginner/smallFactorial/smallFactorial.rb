class Integer
  def fact
    (1..self).reduce(:*) || 1
  end
end

gets.chomp.to_i.times do
  puts gets.chomp.to_i.fact
end
