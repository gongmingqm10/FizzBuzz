require '../main/FizzBuzz'

class FizzBuzzTest

  attr_accessor :fizzbuzz

  def initialize
    @fizzbuzz = FizzBuzz.new
  end

  def test_divisible_five
    array = [0, -15, 5, 100, 65, 30, 180]
    array.each do |number|
      value = @fizzbuzz.divisible_five(number)
      assert_equal true, value
    end

    array = [2, 4,-9, 19, 32, 72, 102 ]
    array.each do |number|
      value = @fizzbuzz.divisible_five(number)
      assert_equal false, value
    end
    puts "divisible_five method is ok"
  end

  def test_divisible_three
    array = [21, 3, 12, 60, -3, 0, 99]
    array.each do |number|
      value = @fizzbuzz.divisible_three(number)
      assert_equal true, value
    end
    array = [2, 4, 13, 19, 32, 70, 100 ]
    array.each do |number|
      value = @fizzbuzz.divisible_three(number)
      assert_equal false, value
    end
    puts "divisible_three method is ok"
  end

  def test_divisible_fifteen
    array = [-15, 20, 0, 75, 90]
    array.each do |number|
      value = @fizzbuzz.divisible_fifteen(number)
      assert_equal true, value
    end
    array = [25, 40, 35, 80, -50]
    array.each do |number|
      value = @fizzbuzz.divisible_fifteen(number)
      assert_equal false, value
    end
    puts "divisible_fifteen method is ok"
  end

  def test_explain
    str = [1, 3, 15, 10, 8]
    expected_result = @fizzbuzz.explain(str)
    assert_equal "1 Fizz Fizz Buzz Buzz 8", result
    puts "explain method is ok"
  end
end

if __FILE__ == $0
  fizz_buzz_test = FizzBuzzTest.new
  fizz_buzz_test.test_divisible_three
  fizz_buzz_test.test_divisible_five
  fizz_buzz_test.test_divisible_fifteen
  fizz_buzz_test.test_explain
  puts "All tests successful!"
end