def find_short(s)
  s = s.split(' ')
  l = s[0].length
  s.each do |x|
    l = x.length if x.length < l
  end
  # your code here
  l # l: length of the shortest word
end
