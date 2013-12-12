class FizzBuzz

  def compile_numbers number
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

  def compile_array array
    result = []
    array.each do |number|
      result.push self.compile_numbers(number)
    end
    result.join(" ")
  end


  private

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