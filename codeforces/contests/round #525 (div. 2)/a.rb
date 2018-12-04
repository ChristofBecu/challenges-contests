def search(x)
  x.downto(1) do |a|
    x.downto(1) do |b|
      return a, b if (a % b).zero? && (a * b > x) && (a / b < x)
    end
  end
  -1
end

x = gets.chomp.to_i
a, b = search(x)
print a, ' ', b, "\n"
