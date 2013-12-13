class FizzBuzz

  def compile_numbers str
    numbers = str_to_array str
    return 'ERROR' unless legal? numbers
    handle_array(numbers)
  end

  private
  def handle_single_number(number)
    case
      when fizzbuzz_number?(number)
        'FizzBuzz'
      when fizz_number?(number)
        'Fizz'
      when buzz_number?(number)
        'Buzz'
      else
        number
    end
  end

  def legal? array
     array.join('').match('^[0-9]*$')
  end

  def str_to_array str
    str.squeeze(' ').split()
  end

  def handle_array array
    result = []
    array.each do |number|
      result.push handle_single_number(number.to_i)
    end
    result.join(" ")
  end

  def fizz_number? number
    number%3 == 0
  end

  def buzz_number? number
    number%5 == 0
  end

  def fizzbuzz_number? number
    number%15==0
  end

end
