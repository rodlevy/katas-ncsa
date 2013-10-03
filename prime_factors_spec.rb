class PrimeFactors
	def self.of(num)
		factors = []
		candidate = 2
		while candidate <= num
			while num % candidate == 0
				factors << candidate
				num /= candidate
			end

			if candidate >= Math.sqrt(num) && num > 1
				candidate = num
			else
				candidate += 1
			end
		end

		factors
	end
end


describe PrimeFactors do
	[
		[2, [2] ],
		[3, [3] ],
		[4, [2,2] ],
		[5, [5]],
	    [6, [2,3] ],
	    [8, [2,2,2] ],
	    [9, [3,3]],
	    [2*3*5*7*11, [2,3,5,7,11]],
	    [2**100, [2]*100],
	    [2**19-1, [2**19-1]],
	    [2**31-1, [2**31-1]]
	].each do |num, factors|
		it "the prime factors of #{num} are #{factors}" do
			PrimeFactors.of(num).should == factors
		end
	end

end
