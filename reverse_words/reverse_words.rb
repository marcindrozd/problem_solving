File.open(ARGV[0]).each_line do |line|
  next if line.chomp.empty?
  sentence = line.chomp.split(" ")
  puts sentence.reverse.join(" ")
end
