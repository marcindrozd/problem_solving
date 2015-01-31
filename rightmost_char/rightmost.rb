File.open(ARGV[0]).each_line do |line|
  sentence, letter = line.split(",")

  # fix for the line breaks at the end of the sentence
  letter.chomp!
  
  if sentence.include?(letter) 
    puts (sentence.size - 1) - sentence.reverse.index(letter)
  else
    puts -1
  end
end