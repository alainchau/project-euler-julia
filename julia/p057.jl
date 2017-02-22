f(x) = big(1 + 1//(1+x))

#println(f(f(1+1//2)))

function main()
    t = 1 + 1//2
    res = 0
    for i in 1:1_000
        if ndigits(num(t)) > ndigits(den(t))
            res += 1
        end

        t = f(t)
    end
    println(res)
end

main()
