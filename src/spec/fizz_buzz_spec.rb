require 'fizz_buzz'

describe FizzBuzz do
  subject { FizzBuzz.new }

  describe 'test compile_numbers function' do
    it 'should return Fizz when input 3' do
      actual = subject.compile_numbers 3
      expect(actual).to eq('Fizz')
    end
  end




end
