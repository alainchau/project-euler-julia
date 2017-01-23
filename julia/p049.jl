# Project Euler Problem 49
#
# The arithmetic sequence, 1487, 4817, 8147, in which each of the terms increases by 3330,
# is unusual in two ways:
# (i) each of the three terms are prime, and,
# (ii) each of the 4-digit numbers are permutations of one another.
#
# There are no arithmetic sequences made up of three 1-, 2-, or 3-digit primes,
# exhibiting this property, but there is one other 4-digit increasing sequence.
#
# What 12-digit number do you form by concatenating the three terms in this sequence?

"Check if a b c are in arithmetic order"
function arithmetic_sequence(a,b,c)


    if abs(a-b) == abs(b-c)
        return true
    end

    return false
end

using Primes

plst = primes(1000, 9999)

pdct = Dict()

for p in plst
    s = Set(string(p))
    pdct[s] = get(pdct, s, Int64[])
    push!(pdct[s], p)
end

for k in keys(pdct)

    lst = pdct[k]
    N = length(lst)
    if N >= 3
        for a in 1:N, c in 1:N, b in a+1:c-1
            if arithmetic_sequence(lst[a], lst[b], lst[c])
                println("$(lst[a]) $(lst[b]) $(lst[c])")
            end

        end
    end

end
