# A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,

# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.
# 
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.


for a in 1..1000
    for b in a+1..1000
        c=1000-a-b 
        puts a *b * c if (a*a)+(b*b)==(c*c) && c == 1000 - a - b 
    end
end