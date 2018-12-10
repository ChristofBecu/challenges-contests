class Integer
  # ! time limit exceeded
  def simple_sum(mod)
    n = self
    sol = 0
    (1..n).each do |x|
      sol += x**x % mod
    end
    sol # % mod
   end

  def sum_consecutive
    self * (self + 1) / 2
  end

  def sum_consecutive_squares
    self * (self + 1) * (2 * self + 1) / 6
  end

  def sum
    (self-1).sum_consecutive + (self-1).sum_consecutive_squares
  end
end

n = 10_000_000
m = 20_000

p n.simple_sum(m)

# (1..10).each do |x|
#   puts "#{x} : #{x.sum_consecutive_squares}"
# end

# gets.chomp.to_i.times do
#   n, m = gets.chomp.split.map(&:to_i)
#   puts n.simple_sum(m)
# end

#puts n.simple_sum(m)


