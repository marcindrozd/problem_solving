class Sieve
  def initialize(number)
    @number = number
  end

  def prepare_array
    array = []
    (2..@number).each {|item| array << item}
    array
  end

  def primes
    final_array = []
    working_array = prepare_array
    while !working_array.empty?
      current_value = working_array.shift
      final_array << current_value
      working_array = working_array.delete_if {|item| item % current_value == 0}
    end
    final_array
  end
end