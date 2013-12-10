require 'fizz_buzz'

describe FizzBuzz do
  subject { FizzBuzz.new }

  describe 'exchange function test' do
    context 'normal input' do
      it 'should be "Fizz Fizz Buzz Buzz Fizz Buzz" when fizzbuzzed as "3 0 5 15 13"' do
        actual = subject.to_fizzbuzz '3 0 5 15 13'
        expected = ['Fizz','FizzBuzz','Buzz','FizzBuzz',13]
        expect(actual).to eq(expected)
      end
    end

    context 'error input' do
      it 'should get a "ERROR" when input some non number' do
        actual = subject.to_fizzbuzz '3 ds 8   '
        expect(actual).to eq('ERROR')
      end
    end
  end

end
