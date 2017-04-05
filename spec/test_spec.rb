=begin
The program can be passed a number.
When passed a number that is a multiple of 3, the program returns the message 'Fizz'.
When passed a number that is a multiple of 5, the program returns the message 'Buzz'.
When passed a number that is a multiple of both 3 and 5, the program ignores the previous 2 rules and returns the message 'Fizzbuzz'.
In all other cases, the program simply returns the given number.
=end

require 'fizzbuzz'

describe 'fizzbuzz' do

	describe "When passed a number that is a multiple of 3, the program returns the message 'Fizz'." do 
	  it 'returns "fizz" when passed 3' do
	    expect(fizzbuzz(3)).to eq 'fizz'
	  end
	  it 'returns "fizz" when passed 9' do
	    expect(fizzbuzz(9)).to eq 'fizz'
	  end
	  it 'returns "fizz" when passed 5' do
	    expect(fizzbuzz(5)).to eq nil
	  end
	end

end

