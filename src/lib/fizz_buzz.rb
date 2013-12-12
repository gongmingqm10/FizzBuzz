class FizzBuzz

  def compile_numbers number
    'Fizz' if fizz_number? number
  end


  private

  def fizz_number? number
    number%3 ==0
  end

end