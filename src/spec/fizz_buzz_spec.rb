require 'fizz_buzz'

describe FizzBuzz do
  subject { FizzBuzz.new }

  describe 'test compile_numbers function' do
    context 'single number test'
      it 'should return Fizz when input 3' do
        actual = subject.compile_numbers '3'
        expect(actual).to eq('Fizz')
      end

      it 'should return Buzz when input 5' do
        actual = subject.compile_numbers '5'
        actual == 'Buzz'
        expect(actual).to eq('Buzz')
      end

      it 'should return FizzBuzz when input 15' do
        actual = subject.compile_numbers '15'
        expect(actual).to eq('FizzBuzz')
      end
  end

  describe 'array numbers test' do
    context 'normal test'
      it 'should be "Fizz FizzBuzz" when input [3, 30, 41]' do
        actual = subject.compile_numbers('3 30 41')
        expect(actual).to eq('Fizz FizzBuzz 41')
      end
      context 'error test'
      it 'should be ERROR when input any non-number' do
        actual = subject.compile_numbers('23 Fi zz sdf')
        expect(actual).to eq('ERROR')
      end
  end


end
