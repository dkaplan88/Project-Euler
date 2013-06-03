# The prime factors of 13195 are 5, 7, 13 and 29.
# 
# What is the largest prime factor of the number 600851475143?

answer = 0
product_sum = 1

def prime(number)
  for i in 2..(number-1)
    if number % i == 0
      return false
    end
  end
end

(2..600851475143).each do |num|
  if 600851475143 % num == 0
    if prime num
      answer = num
      product_sum *= num
      if product_sum >= 600851475143
        break 
      end
    end
  end
end

#answer => 6857

