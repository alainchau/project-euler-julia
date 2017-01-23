# Project Euler Problem 43
#
# The number, 1406357289, is a 0 to 9 pandigital number because it is made up of each of the digits 0 to 9 in some order, but it also has a rather interesting sub-string divisibility property.
#
# Let d1 be the 1st digit, d2 be the 2nd digit, and so on. In this way, we note the following:
#
# d2d3d4=406 is divisible by 2
# d3d4d5=063 is divisible by 3
# d4d5d6=635 is divisible by 5
# d5d6d7=357 is divisible by 7
# d6d7d8=572 is divisible by 11
# d7d8d9=728 is divisible by 13
# d8d9d10=289 is divisible by 17
# Find the sum of all 0 to 9 pandigital numbers with this property.

import Combinatorics

function main()

    perms = Combinatorics.permutations(0:9)
    result = BigInt(0)

    for perm in perms
        if (perm[4] in "02468") && (sum(perm[3:5]) % 3 == 0) && (perm[6] in "05") && (perm[5]*100 + perm[6]*10 + perm[7]) % 7 == 0 && (perm[6] - perm[7] + perm[8]) % 11 == 0 && (4*perm[9]+(perm[7]*10+perm[8])) % 13 == 0 && ((perm[8]*10+perm[9])-5*perm[10]) % 17 == 0

            result += parse(BigInt, parse(join(perm)))
        end

    end
    println(result)
end

@time main()
