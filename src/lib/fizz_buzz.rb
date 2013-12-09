class FizzBuzz

  def divisible_five(number)
    number%5 == 0
  end

  def divisible_three(number)
    number%3 == 0
  end

  def not_divisible_three_or_five(number)
     !(divisible_three(number)||divisible_five(number))
  end

  def exchange(numbers)
    numbers = numbers.squeeze(' ').split
    result = Array.new
    numbers.each do |number|
      if number.match(/^\d+$/)
        number = number.to_i
        result.push("Fizz") if divisible_three(number)
        result.push("Buzz") if divisible_five(number)
        result.push(number) if not_divisible_three_or_five(number)
      else
        return 'ERROR'
      end
    end
    return result.join(' ')
  end
end

if __FILE__ == $0
  fizz_buzz_new = FizzBuzz.new
  print 'Input all the numbers:'
  array = gets
  result = fizz_buzz_new.exchange array
  puts result
end