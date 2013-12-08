class FizzBuzz

  def divisible_five(number)
    result = number%5
    result==0 ? true : false
  end

  def divisible_three(number)
    result = number%3
    result==0 ? true : false
  end

  def divisible_fifteen(number)
    result = number%15
    result==0 ? true : false
  end

  def exchange(numbers)
    numbers.squeeze!(" ")
    numbers = numbers.split
    result = Array.new
    numbers.each do |number|
      if number.match(/^\d+$/)
        number = number.to_i
        if(divisible_fifteen(number))
          result.push("Fizz Buzz")
        elsif(divisible_five(number))
          result.push("Buzz")
        elsif(divisible_three(number))
          result.push("Fizz")
        else
          result.push(number)
        end
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