# Project Euler Problem 56

# A googol (10100) is a massive number: one followed by one-hundred zeros; 100100 is almost unimaginably large:
# one followed by two-hundred zeros. Despite their size, the sum of the digits in each number is only 1.

# Considering natural numbers of the form, ab, where a, b < 100, what is the maximum digital sum?

max_digital_sum = 0

for a in 99:-1:1, b in 99:-1:1
    x = big(a)^b
    s = sum([parse(Int, c) for c in string(x)])

    if s > max_digital_sum
        max_digital_sum = s
    end
end

println(max_digital_sum)
