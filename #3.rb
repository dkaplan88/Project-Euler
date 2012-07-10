# The prime factors of 13195 are 5, 7, 13 and 29.
# 
# What is the largest prime factor of the number 600851475143?

a = []
product_sum = 1

def prime(number)
  for i in 2..(number-1)
    if number % i == 0
      return false
    end
  end
end


(2..600851475143).each do |x|
  if 600851475143 % x == 0
    if prime x
      a << x
      product_sum *= x
      if product_sum >= 600851475143
        break
      end
    end
  end
end

prime 600851475143
puts "The answer is #{a.last}"

