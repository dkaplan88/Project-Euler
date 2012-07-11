# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# 
# What is the 10 001st prime number?

class Integer
  def prime?
    prime = true
  
    if self <= 1
      prime = false
    elsif self == 2
      prime = true
    elsif self % 2 == 0
      prime = false
    else 
      m = 3
      while m < self
        if self % m == 0
          prime = false
          break
        else 
          m+=2
        end
      end 
      prime 
    end
  end

  primes = []
  for i in 1..105000
    primes << i if i.prime?
  end

  puts primes[10000]
end 
# takes 213 seconds :( 