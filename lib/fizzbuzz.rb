=begin
The program can be passed a number.
When passed a number that is a multiple of 3, the program returns the message 'Fizz'.
When passed a number that is a multiple of 5, the program returns the message 'Buzz'.
When passed a number that is a multiple of both 3 and 5, the program ignores the previous 2 rules and returns the message 'Fizzbuzz'.
In all other cases, the program simply returns the given number.
=end

def fizzbuzz(num)

	string = ''
	string +='fizz' if num % 3 == 0
	string +='buzz' if num % 5 == 0
	string = num if string.empty? || num == 0
	string

end
