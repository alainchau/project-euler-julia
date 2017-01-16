# Project Euler Problem 6
#
# The sum of the squares of the first ten natural numbers is,
#
#                   12 + 22 + ... + 102 = 385
#
# The square of the sum of the first ten natural numbers is,
#
#             (1 + 2 + ... + 10)2 = 552 = 3025
#
# Hence the difference between the sum of the squares of the first
# ten natural numbers and the square of the sum is 3025 − 385 = 2640.
#
# Find the difference between the sum of the squares of the first
# one hundred natural numbers and the square of the sum.

s1 = s2 = 0

upperlim = 100

for i in 1:upperlim
    s1 += i^2
    s2 += i
end

s2 = (s2)^2

println(s2-s1)
