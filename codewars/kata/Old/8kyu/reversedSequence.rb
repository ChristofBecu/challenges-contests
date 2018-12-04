def reverse_seq(n)
  a = []
  (1..n).each do |i|
    a[i] = i
  end

  a = a.reverse
  a.pop
  a
end
