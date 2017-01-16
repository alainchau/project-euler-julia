# Project Euler Problem 42
#
# The nth term of the sequence of triangle numbers is given by, tn = ½n(n+1);
# so the first ten triangle numbers are:
#
# 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...
#
# By converting each letter in a word to a number corresponding to its alphabetical
# position and adding these values we form a word value.
# For example, the word value for SKY is 19 + 11 + 25 = 55 = t10.
# If the word value is a triangle number then we shall call the word a triangle word.
#
# Using words.txt (right click and 'Save Link/Target As...'), a 16K text file containing
# nearly two-thousand common English words, how many are triangle words?



open("p042-words.txt") do f
    while !eof(f)
        n_triangle_words = 0
        s = readline(f)
        s = split(s, '"')
        s = [k for k in s if length(k) > 0 && k != ","]

        for word in s
            tmp = 0
            for c in word
                 # Int('A') = 64
                tmp += (Int(c) - 64)
            end
            n = (-1 + sqrt(1 + 8*tmp))/2
            if round(Int, n) == n
                n_triangle_words += 1
            end
        end
        println(n_triangle_words)
        break
    end
end

