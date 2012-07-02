# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# 
# Find the sum of all the multiples of 3 or 5 below 1000.

@a = []
1000.times do |number|
  if number % 3 == 0 || number % 5 == 0
    @a.push(number) 
    end
end

sum = 0
@a.each do |i|
  sum += i
end
puts sum

