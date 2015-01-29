def sum_of_digits(num)
  total = 0

  (0..num.size).each do |n|
    total += num[n].to_i
  end
  total
end

File.open(ARGV[0]).each_line do |line|
  puts sum_of_digits(line)
end