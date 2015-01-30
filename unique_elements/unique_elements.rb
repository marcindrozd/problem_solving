File.open(ARGV[0]).each_line do |line|
  array = line.split((/\W/))
  array.uniq!
  puts array.join(",")
end