def fizzbuzz(first_divider, second_divider, limit)
  results = []
  1.upto(limit) do |num|
    if num % first_divider == 0 && num % second_divider == 0
      results << "FB"
    elsif num % first_divider == 0
      results << "F"
    elsif num % second_divider == 0
      results << "B"
    else
      results << num
    end
  end

  puts results.join(" ")
end

File.open(ARGV[0]).each_line do |line|
  first_divider, second_divider, limit = line.split(" ")
  fizzbuzz(Integer(first_divider), Integer(second_divider), Integer(limit))
end
