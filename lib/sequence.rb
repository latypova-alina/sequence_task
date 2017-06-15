class Sequence
  def initialize(n)
    @n = n
  end

  def to_string(arg)
    arg.to_s
  end

  def to_s
    @n
  end

  def make_an_instance(name)
    name = Sequence.new(@n)
  end

  def next
    split_sequence = @n.split("")
    final_sequence = ""
    j, similar_digit_amount = 0, 1
    while (j < split_sequence.size)
      while (j + 1 < split_sequence.size)&&(split_sequence[j] == split_sequence[j+1])
        similar_digit_amount+=1
        j+=1
      end
      final_sequence = final_sequence + to_string(similar_digit_amount) + split_sequence[j]
      similar_digit_amount = 1
      j+=1
    end
    @n = final_sequence
    make_an_instance(@n)
  end
end