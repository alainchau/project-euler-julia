# Project Euler problem 41
#
# We shall say that an n-digit number is pandigital if it
# makes use of all the digits 1 to n exactly once.
# For example, 2143 is a 4-digit pandigital and is also prime.
#
# What is the largest n-digit pandigital prime that exists?

import Combinatorics, Primes

function main()
    largest_prime = -Inf

    n = 10
    while largest_prime == -Inf
        n -= 1
        perms = permutations(1:n)
        for perm in perms

            if perm[end] % 2 == 0
                continue
            end

            p = parse(Int, join(perm))

            if p > largest_prime && isprime(p)
                largest_prime = p

            end
        end
    end
    println(largest_prime)
end

@time main()
