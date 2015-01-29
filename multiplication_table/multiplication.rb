def multiplication(num)
  (1..num).each do |n|
    i = n
    array = []
    array << n
    while array.size < 12
      n += i
      array << n
    end
    print_table(array)
  end
end

def print_table(array)
  array.each_with_index do |item, idx|
    if idx == 0
      print item.to_s
    elsif idx == 11
      puts item.to_s.rjust(4)
    else
      print item.to_s.rjust(4)
    end     
  end
end

multiplication(12)