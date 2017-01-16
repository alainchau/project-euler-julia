# Project Euler Problem 39
#
# If p is the perimeter of a right angle triangle with integral
# length sides, {a,b,c}, there are exactly three solutions for p = 120.
#
# {20,48,52}, {24,45,51}, {30,40,50}
#
# For which value of p ≤ 1000, is the number of solutions maximised?


function main()
    p_max = -Inf
    max_solns = -Inf

    for p in 10:1000
        n_solns = 0

        for i in 1:p, j in i:p
            if i + j + sqrt(i^2 + j^2) == p
                n_solns += 1
            end
        end

        if n_solns > max_solns
            max_solns = n_solns
            p_max = p
        end
    end
    println(p_max)
end


main()
