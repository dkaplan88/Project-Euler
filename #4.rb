def prime? n
  for x in 2..(n-1)
    if n % x == 0
      return false
    end
  end
  true
end

n = 600_851_475_143
a = []
product_sum = 1
(2..n).each do |x|
  if n % x == 0
    if prime? x
      a << x
      product_sum *= x
      if product_sum >= n
        break
      end
    end
  end
end

puts "The answer is #{a.last}"