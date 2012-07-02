  @a = []
1000.times do |number|
  if number % 3 == 0 || number % 5 == 0
    @a.push(number) 
    end
end
   puts @a
