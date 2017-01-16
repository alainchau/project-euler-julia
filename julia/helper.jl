module helper

import Primes

function nextprime(y)
    x = y + 1

    while (!Primes.isprime(x))
        x += 1
    end
    x
end

end
