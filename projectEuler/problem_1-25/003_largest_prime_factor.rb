# *Largest prime factor
# *Problem 3

# ? The prime factors of 13195 are 5, 7, 13 and 29.
# ? What is the largest prime factor of the number 600851475143 ?

# ! 6857

require 'prime'

# class Integer
class Integer
  # Public: return the largest prime factor of integer.
  # Examples
  #   100.largest_prime_factor
  #   # =>
  #
  # Returns the largest prime factor.
  # ! not right, 100 returns 25, which isn't a prime
  def largest_prime_factor
    factor = self
    i = 2
    while i * i < factor
      factor /= i while (factor % i).zero?
      i += 1
    end
    factor
  end
end

puts 600_851_475_143.largest_prime_factor
puts 100.largest_prime_factor
