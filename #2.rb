fibonacci = 0
first = 0 
second = 1
i = 0

while i <= 4000000
  i = first + second 
  if i%2 == 0
    fibonacci += i
  end
  first = second 
  second = i
end

puts fibonacci
  