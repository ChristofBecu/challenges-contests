def scrolling_text(text)
  arr = []
  (0..text.size - 1).each do |_x|
    arr << text.upcase
    text = text.split('')
    text << text.delete_at(0)
    text = text.join('')
  end
  arr
end

puts scrolling_text('CODEWARS')
