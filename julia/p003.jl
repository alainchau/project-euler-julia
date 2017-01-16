# Project Euler Problem 3
#
# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?

number = 600851475143
upper_lim = sqrt(number)

factor = 3

for i = 3:2:upper_lim
    if number % i == 0
        if number == i
            break
        end
        number /= i
    end
end

println(number)
