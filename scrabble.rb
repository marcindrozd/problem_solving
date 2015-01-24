# Here's some extra practice with hashes and blocks that has nothing to do with our game, 
# but it's fun nonetheless. Suppose we wanted to simulate a game of Scrabble. 
# In Scrabble, each letter has an associated point value and the score of a word is the sum of 
# the points of all the letters in the word. In our abbreviated version of the game, 
# we'll use the following set of letters and their associated point values:

# Letter  Points
# c 3
# e 1
# l 1
# n 1
# t 1
# x 8
# y 4
# The goal is to write a program that calculates the score for the word "excellently". 
# It would also be handy to know the total points accumulated for any given letter. 
# For example, "excellently" has three "e" letters, each worth 1 point. So the total points for 
# the letter "e" is 3 (1 + 1 + 1). To pull this off, you'll need to use a hash to represent 
# the distribution of letters and their point values. Then you can iterate through the characters 
# in the word and look up each character's point value in the hash.

LETTER_VALUES = { "c" => 3, "e" => 1, "l" => 1, "n" => 1, "t" => 1, "x" => 8, "y" => 4}

word = "excellently"

points_total = Hash.new(0)

word.each_char do |letter|
  points_total[letter] += LETTER_VALUES[letter]
end

puts points_total

score = points_total.values.inject(:+)

puts score