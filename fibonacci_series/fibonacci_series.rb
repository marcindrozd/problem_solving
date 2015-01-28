def fibonacci_series(num)
  n1, n2 = 0, 1

  num.times do
    n1, n2 = n2, n2 + n1
  end
  n1
end

File.open(ARGV[0]).each_line do |line|
  puts fibonacci_series(line.to_i)
end
