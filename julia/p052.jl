# Project Euler Problem 52
#
# It can be seen that the number, 125874, and its double,
# 251748, contain exactly the same digits, but in a different order.
#
# Find the smallest positive integer, x, such that 2x, 3x, 4x, 5x, and 6x, contain the same digits.

function main()

    k = 0
    while true

        # Number has to be between 10^k and 1.66666 * 10^k
        # since 2*x and 6*x must have the same NUMBER of digits.
        for i in 10^k : round(Int, (5/3)*10^k, RoundUp)

            # Check if 2x,...,6x have the same digits.
            s2 = Set(string(2i))
            for lamb in 3:6
                if s2 != Set(string(lamb*i))
                    @goto stop
                end
            end

            # if digits(s2) == all other sets, then print and return
            println(i)
            return

            # if not, then skip to next iteration
            @label stop
        end
        k += 1
    end
    println("None..")
end

main()
