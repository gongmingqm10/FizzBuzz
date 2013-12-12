require 'fizz_buzz'

describe FizzBuzz do
  subject { FizzBuzz.new }

  describe 'test compile_numbers function' do
    it 'should return Fizz when input 3' do
      actual = subject.compile_numbers 3
      actual == 'Fizz'
    end

    it 'should return Buzz when input 5' do
      actual = subject.compile_numbers 5
      actual == 'Buzz'
    end

    it 'should return FizzBuzz when input 15' do
      actual = subject.compile_numbers 15
      actual == 'FizzBuzz'
    end
  end




end
