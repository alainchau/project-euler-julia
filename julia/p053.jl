# Project Euler Problem 53
#
# There are exactly ten ways of selecting three from five, 12345:
#
# 123, 124, 125, 134, 135, 145, 234, 235, 245, and 345
#
# In combinatorics, we use the notation, 5C3 = 10.
#
# In general,
#
# nCr =	n!/ (r!(n-r)!)
# n!
# r!(n−r)!
# ,where r ≤ n, n! = n×(n−1)×...×3×2×1, and 0! = 1.
# It is not until n = 23, that a value exceeds one-million: 23C10 = 1144066.
#
# How many, not necessarily distinct, values of  nCr, for 1 ≤ n ≤ 100, are greater than one-million?

function main()
    n = 100

    arr = zeros(BigInt, (n+1,n+1))

    arr[1, 1] = 1

    for row in 2:n+1
        for col in 1:row
            if col == 1
                arr[row, col] = arr[row-1, col]
            else
                arr[row, col] = arr[row-1, col] + arr[row-1, col-1]
            end
        end
    end

    result = 0
    for a in arr
        if a > 1_000_000
            result += 1
        end
    end
    println(result)

end

main()
