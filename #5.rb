# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# 
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

answer = 0

for j in 1..1000000000
  if j%2== 0 && j%3==0 && j%4==0 && j%5==0 && j%6==0 && j%7==0 && j%8==0 && j%9==0 && j%10==0 && j%11==0 && j%12==0 && j%13==0 && j%14==0 && j%15==0 && j%16==0 && j%17==0 && j%18==0 && j%19==0 && j%20==0            
    answer = j
    break
  end
end

# answer => 232792560