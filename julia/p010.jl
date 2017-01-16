# Project Euler Problem 10
#
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#
# Find the sum of all the primes below two million.

include("helper.jl")
import helper

result = 0
p = 2
while true

    p > 2_000_000 && break

    result += p

    p = helper.nextprime(p)
end

println(result)
