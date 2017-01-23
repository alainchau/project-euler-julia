# Project Euler Problem 47
#
# The first two consecutive numbers to have two distinct prime factors are:
#
# 14 = 2 × 7
# 15 = 3 × 5
#
# The first three consecutive numbers to have three distinct prime factors are:
#
# 644 = 2² × 7 × 23
# 645 = 3 × 5 × 43
# 646 = 2 × 17 × 19.
#
# Find the first four consecutive integers to have four distinct prime factors each. What is the first of these numbers?

using primes

const consec_goal = 4

consec = 0

n = 0
while true
    n+= 1
    if length(factor(n)) == consec_goal
        consec += 1
    else
        consec = 0
    end

    if consec == consec_goal
        println(n-consec+1)
        break
    end
end
