# Could use memoization here to reduce redundancy,
# but Julia's so fast that its not worth the effort.
fib(n) = n < 2 ? 1 : fib(n-1) + fib(n-2)

result = 0

i = 1
while true
    curr = fib(i)

    if curr > 4_000_000
        break
    end

    if curr % 2 == 0
        result += curr
    end

    i += 1
end

println(result)

