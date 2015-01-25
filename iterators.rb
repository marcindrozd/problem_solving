def conversation
  puts "Hello!"
  yield
  puts "Goodbye!"
end

conversation { puts "Good to meet you" }

def five_times
  1.upto(5) { |i| yield i }
end


five_times do |n|
  puts "#{n} situps"
  puts "#{n} pushups"
  puts "#{n} chinups"
end

def n_times(num)
  1.upto(num) { |i| yield i }
end

n_times(6) do |n|
  puts "#{n} situps"
  puts "#{n} pushups"
  puts "#{n} chinups"
end