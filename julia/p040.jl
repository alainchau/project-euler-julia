# Project Euler Problem 40
#
# An irrational decimal fraction is created by concatenating the positive integers:
#
# 0.123456789101112131415161718192021...
#
# It can be seen that the 12th digit of the fractional part is 1.
#
# If dn represents the nth digit of the fractional part, find the value of the following expression.
#
# d1 × d10 × d100 × d1000 × d10000 × d100000 × d1000000

function main()
    result = 1
    cursor = 0

    i = 1
    k = 0
    while cursor < 1_000_000
        str = string(i)

        for c in str
            cursor += 1
            if cursor == 10^k
                println(cursor, " ", c, " ", k)
                result *= parse(Int, c)
                k += 1
            end
        end
        i += 1
    end
    println(result)
end

main()
