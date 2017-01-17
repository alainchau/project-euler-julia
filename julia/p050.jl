# Project Euler Problem 50
#
# The prime 41, can be written as the sum of six consecutive primes:
#
# 41 = 2 + 3 + 5 + 7 + 11 + 13
# This is the longest sum of consecutive primes that adds to a prime below one-hundred.
#
# The longest sum of consecutive primes below one-thousand that adds to a prime,
# contains 21 terms, and is equal to 953.
#
# Which prime, below one-million, can be written as the sum of the most consecutive primes?

import Primes

upper_limit = 1_000_000

function main()
    prime_list = Primes.primes(upper_limit)
    N = length(prime_list)

    for row_len in N:-1:1
        for i in 1:N-row_len+1
            tmp_sum = sum(prime_list[i:i+row_len-1])

            if tmp_sum > upper_limit
                break
            end


            if Primes.isprime(tmp_sum)
                println(tmp_sum, " ", row_len)
                return
            end
        end
    end

end

main()
