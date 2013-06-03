# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# 
# Find the sum of all the primes below two million.

class Prime
  attr_accessor :number

  def initialize(number, array) 
    @number = number.to_i
    @start = 3 
    @array = array
  end

  def manipulate(test)
    array = remove(test)
    @array.delete_if { |numbers| array.include?(number) }
  end

  def remove(test)
    remove = []
    @number.times do |number|
      if test * number < @number
        remove << number
      else
        break
      end
    end
    remove
  end

  def sqrt
    Math.sqrt(@number).round(0)
  end

  def prime?
    while @start <= sqrt
      if @number % @start == 0 
        return false
      else
        @start += 2
      end
    end
    true 
  end

  def even?
    @number % 2 == 0 ? true : false
  end
end

prime_numbers = []
prime_numbers << 2
prime_numbers << 3

a = [3]
(4..2000000).each do |test|
  p test
  a << test
  dollar = Prime.new(test, a)
   if !dollar.even? && dollar.prime?
    prime_numbers << test
  end
end

p prime_numbers.inject(&:+)
