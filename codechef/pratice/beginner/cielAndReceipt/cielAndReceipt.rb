highestPrice = 2048
gets.chomp.to_i.times do
  count = 0
  money = gets.chomp.to_i
  menus = money / highestPrice
  money %= highestPrice
  until money == 0
    count += money % 2
    money /= 2
  end
  puts menus + count
end
