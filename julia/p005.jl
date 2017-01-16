# Project Euler Problem 5
#
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

import Primes

upperlim = 20

factors = Dict()

for i in 2:upperlim
    d = Primes.factor(i)

    for (k, v) in d
        if v > get(factors, k, -1)
            factors[k] = v
        end
    end
end

result = 1
for (k,v) in factors
    result *= k^v
end

println(result)
