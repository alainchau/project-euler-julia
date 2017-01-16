# Project Euler Problem 9
#
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
#
#                          a2 + b2 = c2
#
# For example, 32 + 42 = 9 + 16 = 25 = 52.
#
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

function p9()
    for i in 1:1000
        for k in i:1000
            for j in i:k
                if i + j + k == 1000
                    if i^2 + j^2 == k^2
                        return i*j*k
                    end
                end
            end
        end
    end
end


println(p9())

