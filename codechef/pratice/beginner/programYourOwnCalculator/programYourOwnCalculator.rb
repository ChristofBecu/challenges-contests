a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp
case c
when "+"
  puts a + b
when "-"
  puts a - b
when "*"
  puts a * b
when "/"
  begin
    puts a / b.to_f
  rescue => exception
    puts "division by 0"
  end
end
