gets.chomp.to_i.times do
  input = gets.chomp
  count = input.scan(/[^a-z ]/i).length
  count += input.scan(/[A-Z]/).length
  p capital_count
end

