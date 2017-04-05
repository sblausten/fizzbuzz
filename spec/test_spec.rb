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
	  it 'returns "fizz" when passed random multiple of 3' do
	    expect(fizzbuzz(3*srand)).to eq 'fizz'
	  end
	end

	describe "When passed a number that is a multiple of 5, the program returns the message 'Buzz'." do 
	  it 'returns "buzz" when passed 5' do
	    expect(fizzbuzz(5)).to eq 'buzz'
	  end
	  it 'returns "buzz" when passed 10' do
	    expect(fizzbuzz(10)).to eq 'buzz'
	  end
	  it 'returns "buzz" when random integer multiple of 5' do
	    expect(fizzbuzz(5*srand)).to eq 'buzz'
	  end
	end

	describe "When passed a number that is a multiple of both 3 and 5, the program ignores the 
	previous 2 rules and returns the message 'Fizzbuzz'." do
		it 'returns "fizzbuzz" when passed 15' do
			expect(fizzbuzz(15)).to eq 'fizzbuzz'
		end
		it 'returns "fizzbuzz" when passed random integer multiple of 3 and 5' do
			expect(fizzbuzz(5*3*srand)).to eq 'fizzbuzz'
		end
	end

	describe "In all other cases, the program simply returns the given number." do
		it "returns 4 when passed 4" do
			expect(fizzbuzz(4)).to eq 4
		end
		it "returns given float when random float passed" do
			x = rand
			expect(fizzbuzz(x)).to eq x
		end
		it "returns 0 when 0 passed" do
			expect(fizzbuzz(0)).to eq 0
		end
	end


end

