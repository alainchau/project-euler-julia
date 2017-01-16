# Project Euler Problem 4
#
# A palindromic number reads the same both ways.
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.

arr = []
sizehint!(arr, 900^2)

for i in 100:999, j in 100:999
    push!(arr, i*j)
end

sort!(arr, rev=true)

for k in arr
    ks = string(k)
    if ks == reverse(ks)
        println(k)
        break
    end
end

