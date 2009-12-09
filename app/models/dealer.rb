class Dealer
	attr_reader :dice1, :dice2
	def shake
		dice = Dice.new
		@dice1 = dice.shake
		@dice2 = dice.shake
	end

	def chouhan
		if ((@dice1 + @dice2).even?)
			"丁"
		else
			"半"
		end

	end

	def judge(expected)
		if (expected == '丁' && (@dice1 + @dice2).even?)
			:win
		elsif (expected == '半' && (@dice1 + @dice2).odd?)
			:win
		else
			:loose
		end
	end
end

