File.open(ARGV[0]).each_line do |line|
  array = line.split(";")
  array1 = array[0].split(/\W/)
  array2 = array[1].split(/\W/)
  intersection = []

  array1.each do |item|
    intersection << item if array2.include?(item)
  end
  puts intersection.join(",")
end