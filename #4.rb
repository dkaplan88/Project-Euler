# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.
# 
# Find the largest palindrome made from the product of two 3-digit numbers.
a = []
b = []
def check_if_palindrome(number)
  if number.to_s == number.to_s.reverse
    puts "#{number} "
  end
end

for x in 100..999
  for a in 100..999
  sum = x * a
  check_if_palindrome sum
  end
end

# returns all palindromes, search through output for highest
# Answer: 906609 

