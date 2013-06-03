# The Fibonacci sequence is defined by the recurrence relation:

# Fn = Fn-1 + Fn-2, where F1 = 1 and F2 = 1.
# Hence the first 12 terms will be:

# F1 = 1
# F2 = 1
# F3 = 2
# F4 = 3
# F5 = 5
# F6 = 8
# F7 = 13
# F8 = 21
# F9 = 34
# F10 = 55
# F11 = 89
# F12 = 144
# The 12th term, F12, is the first term to contain three digits.

# What is the first term in the Fibonacci sequence to contain 1000 digits?

a = 89 
b = 144
c = 0

fibonacci_number = 12
until c.to_s.length == 1000
  c = a + b
  a = b
  b = c
  fibonacci_number += 1
end

p fibonacci_number

# fibonacci_number => 4782
# time => 280 milliseconds