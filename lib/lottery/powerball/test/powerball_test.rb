require "minitest/autorun"
require_relative "../../../lottery"

describe Lottery::Powerball do
  before do
    Lottery::Powerball.generate_ticket
  end
  describe "when generating a ticket" do
    it "should pick 5 intergers" do
      Lottery::Powerball.pick_five.length.must_equal 5
    end

    it "should pick 1 integer" do
      Lottery::Powerball.pick_one.length.must_equal 1
    end
  end
end