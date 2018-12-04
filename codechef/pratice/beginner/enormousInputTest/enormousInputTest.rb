n, k = gets.chomp.split()
n = n.to_i
k = k.to_i
count = 0

n.times do 
  gets.chomp.to_i % k == 0 ? count+=1 : next
end

puts count