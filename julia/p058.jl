using Primes

function main()

    ratio = 1.0
    nprimes = 0
    ntotal = 0
    sidelen = 1

    curr = 1

    while ratio > 0.1

        sidelen += 2
        for step in 1:4

            curr += (sidelen-1)

            if (isprime(curr))
                nprimes += 1
            end
        end

        ntotal += 4

        ratio = nprimes / ntotal
    end

    println(sidelen)

end

main()
