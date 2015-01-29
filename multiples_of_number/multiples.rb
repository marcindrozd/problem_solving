def multiples_of_number(x, n)
  total = 0
  while total < x
    total += n
  end
  puts total
end

File.open(ARGV[0]).each_line do |line|
  x, n = line.split(",")
  x = x.to_i
  n = n.to_i

  multiples_of_number(x, n)
end