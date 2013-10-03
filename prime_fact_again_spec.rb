class PrimeFactors

	def self.do(number)
		answer = []
		divisor = 2
		while divisor <= (number)
			while number % divisor == 0
				answer << divisor
				number /= divisor
			end
			divisor += 1
		end
		if number % divisor != 0 && number > 1
			answer << number
		end
		answer
	end
end


describe PrimeFactors do
	[
		[2, [2]],
		[3, [3]],
		[4, [2,2]],
		[6, [2,3]],
		[8, [2,2,2]],
		[9, [3,3]]

	].each do |num, factors|

	it "should return the factors of #{num}" do
		PrimeFactors.do(num).should == factors
		end
	end

end
