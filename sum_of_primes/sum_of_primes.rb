def sum_of_primes(number_of_primes)
  primes = []

  n = 1

  while primes.size < number_of_primes
    primes << n if is_prime?(n)
    n += 1
  end
  primes.inject(:+)
end

def is_prime?(num)
  return false if num < 2
  return true if num == 2
  return false if num.even?

  (3..num - 1).step(2).each do |n|
    return false if num % n == 0
  end
  return true
end

puts sum_of_primes(1000)