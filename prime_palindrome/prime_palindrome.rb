def max_prime_palindrome(limit)
  prime_palindromes = []
  (1..limit).each do |num|
    prime_palindromes << num if (is_palindrome?(num) && is_prime?(num))
  end
  prime_palindromes.last
end

def is_palindrome?(num)
  rev_num = num.to_s.reverse.to_i
  num == rev_num
end

def is_prime?(num)
  return false if num < 2
  return true if num == 2
  return false if num.even?

  (3..num - 1).each do |n|
    return false if num % n == 0
  end
  return true
end


puts max_prime_palindrome(1000)