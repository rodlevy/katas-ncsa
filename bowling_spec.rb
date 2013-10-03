class Bowling

	def get_score(num)
		# score = num.split('')
		score = convert_score(num)
		score.inject(:+)
	end

	def convert_score(num)
		print converted_score = num.split('')
		converted_score.each_with_index do |num, index|
			if num == "X"
				converted_score[index] = 10 + converted_score[index +1].to_i + converted_score[index+2].to_i
			elsif num == "/"
				converted_score[index] =  10 + converted_score[index+1].to_i
				converted_score[index - 1] = 0
			else
				converted_score[index] = num.to_i
			end
		end
		print converted_score
		converted_score
	end

end


describe Bowling do
	let(:game) {Bowling.new}

	[
		["1", 1],
		["2", 2],
		["11", 2],
		["111", 3],
		["X11", 14],
		["1/1", 12],
		["2/X12", 33]

		].each do |game, final_score|

	it 'returns the score of a bowling game' do
		Bowling.new.get_score(game).should == final_score
		end
	end
end


