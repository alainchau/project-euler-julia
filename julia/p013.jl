# Project Euler Problem 13
#
# Work out the first ten digits of the sum of the following one-hundred 50-digit numbers.

function main()
    result = big(0)

    open("p013-input.txt") do f
        while !eof(f)
            result += parse(BigInt, strip(readline(f)))
        end
    end
    println(string(result)[1:10])

end

main()
