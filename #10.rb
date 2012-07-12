# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# 
# Find the sum of all the primes below two million.

class Integer # takes FOREVER!!!
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
  for i in 1..2000000
    primes << i if i.prime?
    puts primes
  end
  sum = 0
  primes.each do |p|
    sum += p
  end
  puts sum
end