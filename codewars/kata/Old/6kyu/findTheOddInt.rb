def find_it(seq)
  (0..seq.size).each do |i|
    count = 0
    (0..seq.size).each do |j|
      count += 1 if seq[i] == seq[j]
    end
    return seq[i] if count.odd?
  end
  false
  end

# but of course ruby is much smarter:
def find_it(seq)
  seq.reduce(:^)
end
