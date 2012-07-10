# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.
# 
# Find the largest palindrome made from the product of two 3-digit numbers.
B = []
def check_if_palindrome(number)
  if number.to_s == number.to_s.reverse
    B << number
  end
end

for x in 100..999
  for a in 100..999
  sum = x * a
  check_if_palindrome sum
  end
end

puts B.max
# takes 2 seconds



