module LotteryHelper
	extend self
	def draw(numbers = 0, range = [])
		(1..numbers).map { range.sample }
	end
end