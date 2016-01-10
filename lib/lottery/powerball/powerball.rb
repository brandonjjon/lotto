require_relative "config/powerball_config"
module Lottery
	module Powerball
		include Config, LotteryHelper
		extend self

		attr_reader :pick_five, :pick_one

		def generate_ticket
			@pick_five = draw(5, PICK_5_NUMBERS)
			@pick_one = draw(1, PICK_1_NUMBERS)
		end

		def show_ticket
			puts "Your Pick 5 Choices: #{@pick_five.join(", ")}"
			puts "Your Pick 1 Choice: #{@pick_one.join(", ")}"
		end
	end
end