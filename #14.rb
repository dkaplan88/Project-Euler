# The following iterative sequence is defined for the set of positive integers:

# n  n/2 (n is even)
# n  3n + 1 (n is odd)

# Using the rule above and starting with 13, we generate the following sequence:

# 13  40  20  10  5  16  8  4  2  1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. 
# Although it has not been proved yet (Collatz Problem), 
# it is thought that all starting numbers finish at 1.

# Which starting number, under one million, produces the longest chain?

class Collatz
  def initialize(number)
    @number = number
    @chain_count = 1
  end

  def get_chain
    if @number != 1
      run_chain
    else
     @chain_count
    end
  end

  def run_chain
    @number.even? ? even_function : odd_function
    @chain_count += 1
    get_chain
  end

  def even_function 
    @number = @number / 2
  end

  def odd_function
   @number = 3 * @number + 1
  end
end

answer = 0
longest = 0
(1..1000000).each do |number|
  collatz = Collatz.new(number).get_chain
  if collatz >= longest
    longest = collatz 
    answer = number
  end
end

p answer # => 837799
