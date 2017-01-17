# Project Euler Problem 46
#
# It was proposed by Christian Goldbach that every odd
# composite number can be written as the sum of a prime and twice a square.
#
# 9 = 7 + 2×12
# 15 = 7 + 2×22
# 21 = 3 + 2×32
# 25 = 7 + 2×32
# 27 = 19 + 2×22
# 33 = 31 + 2×12
#
# It turns out that the conjecture was false.
#
# What is the smallest odd composite that cannot be
# written as the sum of a prime and twice a square?

import Primes

function main()

    n = 3
    while true
        if !Primes.isprime(n)
            plist = Primes.primes(n)

            good_composite = false
            for p in plist
                t = sqrt((n-p)/2)
                if t == round(t)
                    good_composite = true
                end
            end

            if !good_composite
                println(n)
                return
            end

        end
        n += 2
    end
end

main()
