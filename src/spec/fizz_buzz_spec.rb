require 'fizz_buzz'

describe FizzBuzz do
  subject { FizzBuzz.new }

  it 'should be true when 20 divided by 5' do
    actual = subject.divisible_five 20
    actual.should be_true
  end

  it 'should be true when 18 divided by 3' do
    actual = subject.divisible_three 18
    actual.should be_true
  end

  it 'should be false when 18 divided by 5' do
    actual = subject.divisible_five 18
    actual.should be_false
  end

  it 'should be false when 20 divided by 3' do
    actual = subject.divisible_three 20
    actual.should be_false
  end

  it 'should be true when 11 divided by neither 3 nor 5' do
    actual = subject.not_divisible_three_or_five 11
    actual.should be_true
  end

  it 'should be false when 12 divided by neither 3 nor 5' do
  actual = subject.not_divisible_three_or_five 12
  actual.should be_false
  end

  it 'should be "Fizz Fizz Buzz Buzz Fizz Buzz" when explained as "3,0,5,15"' do
    actual = subject.exchange '3 0 5 15'
    expected = "Fizz Fizz Buzz Buzz Fizz Buzz"
    expect(actual).to eq(expected)
  end

  it 'should get a "ERROR" when input some non number' do
    actual = subject.exchange '3 ds 8   '
    expect(actual).to eq('ERROR')
  end

end
