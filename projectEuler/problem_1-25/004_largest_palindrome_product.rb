# * Largest palindrome product
# * Problem 4

# ? A palindromic number reads the same both ways.
# ? The largest palindrome made from the product
# ? of two 2-digit numbers is 9009 = 91 x 99.

# ? Find the largest palindrome made from the product of two 3-digit numbers.

# ! 906609

# standard Integer class
class Integer
  def palindrome?
    number = self
    number == number.to_s.reverse.to_i
  end

  def largest_palindrome
    number = self
    while number >= 100
      if (number % 11).zero?
        maxnumber = 999
        db = 1
      else
        maxnumber = 990
        db = 11
      end
      while maxnumber >= number
        break if number * maxnumber <= largest_palindrome

        largest_palindrome = number * maxnumber if (number * maxnumber).palindrome?
        maxnumber -= db
      end
      number -= 1
    end
    largest_palindrome
  end
end

puts 999.largest_palindrome
