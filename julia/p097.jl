# Project Euler Problem 97

# The first known prime found to exceed one million digits was discovered in 1999, and is a Mersenne prime of the form 26972593−1; it contains exactly 2,098,960 digits. Subsequently other Mersenne primes, of the form 2p−1, have been found which contain more digits.

# However, in 2004 there was found a massive non-Mersenne prime which contains 2,357,207 digits: 28433×27830457+1.

# Find the last ten digits of this prime number.

# https://www.wikiwand.com/en/Modular_exponentiation#/Memory-efficient_method
function modular_pow(base, exponent, modulus)
    if modulus == 1
        return 0
    end

    c = 1
    for e_prime in 1:exponent
        c = (c * base) % modulus
    end

    return c
end

println((28433 * modular_pow(2, 7830457, 10^10) + 1) % 10^10)
