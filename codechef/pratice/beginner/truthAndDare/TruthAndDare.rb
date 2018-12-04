def fillList(arr)
  y = gets.chomp.to_i 
  s = gets.chomp.split(' ')
  y.times do |x|
    arr.push(s[x-1].to_i)
  end
end

def compList(r, s)
  s.each do |x|
    if !r.include?(x)
      return false
    end
  end
end

gets.chomp.to_i.times do 

  fillList(tr = Array.new())
  fillList(dr = Array.new())
  fillList(ts = Array.new())
  fillList(ds = Array.new())

  puts compList(tr, ts) && compList(dr, ds) ? "yes" : "no"
end