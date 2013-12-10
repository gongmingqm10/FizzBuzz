class FizzBuzz

  def to_fizzbuzz(numbers)
    numbers = numbers.squeeze(' ').split
    result = []
    numbers.each do |number|
      if number.match(/^\d+$/)
        number = number.to_i
        if fizzbuzz_number? number
          result.push("FizzBuzz")
          next
        end
        result.push("Fizz") if fizz_number?(number)
        result.push('Buzz') if buzz_number?(number)
        result.push(number) if original_number?(number)
      else
        return 'ERROR'
      end
    end
    result
  end

  private

  def buzz_number?(number)
    number%5 == 0
  end

  def fizz_number?(number)
    number%3 == 0
  end

  def fizzbuzz_number?(number)
    buzz_number?(number)&&fizz_number?(number)
  end

  def original_number?(number)
    !(buzz_number?(number)||fizz_number?(number))
  end
end

if __FILE__ == $0
  fizz_buzz_new = FizzBuzz.new
  print 'Input all the numbers:'
  str = gets
  result = fizz_buzz_new.to_fizzbuzz str
  puts result.join(' ')
end