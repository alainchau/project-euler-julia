# Project Euler Problem 7
#
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
#
# What is the 10 001st prime number?

include("helper.jl")
import helper

p = 2
for i in 1:10001
    p = helper.nextprime(p)
end

println(p)
