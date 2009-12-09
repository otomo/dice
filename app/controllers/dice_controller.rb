class DiceController < ApplicationController
  def index
		#@rolls = Roll.find(:all)
		@rolls = Roll.find(:all, :order => "id DESC", :limit => 5)
		@time = Time.now
  end

  def shake
		dice = Dice.new
		@result = dice.shake
		roll = Roll.new
		roll.value = @result
		roll.save
  end

  def report
		@rolls = Roll.find(:all)
		@count = Roll.count
		@count6 = Roll.count(:conditions => "value = 6")

		@statistics = Roll.count(:group => :value)
	end

  def gamble
		if request.post?
			# 丁半の判定
			# @result = :win
			dealer = Dealer.new
			dealer.shake
			@dice1 = dealer.dice1
			@dice2 = dealer.dice2
			@chouhan = dealer.chouhan
			@result = dealer.judge(params[:expected])
		end
	end
end
