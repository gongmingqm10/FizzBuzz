class FizzBuzz

  def compile_numbers number
    'Fizz' if fizz_number? number
    'Buzz' if buzz_number? number
    'FizzBuzz' if fizzbuzz_number? number
  end


  private

  def fizz_number? number
    number%3 ==0
  end

  def buzz_number? number
    number%5 == 0
  end

  def fizzbuzz_number? number
    number%15==0
  end

end