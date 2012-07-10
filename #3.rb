# The prime factors of 13195 are 5, 7, 13 and 29.
# 
# What is the largest prime factor of the number 600851475143?

def prime(number)
  for i in 1..number
    if number % i == 0 
      puts i 
    end
  end
end

prime 600851475143

# this returns all factors
# to determine highest prime factors, look for highest prime number 