class Binary
  def initialize(number)
    @number = number
  end

  def preprocess
    return [0] if (@number =~ /^\d+$/).nil?
    processed_number = @number.split("").reverse
    processed_number.map {|item| item.to_i}
  end

  def to_decimal
    my_array = preprocess
    final_number = 0
    my_array.each_with_index do |value, idx|
      final_number += value * 2 ** idx
    end
    final_number
  end
end