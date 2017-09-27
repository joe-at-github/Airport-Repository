require_relative 'spec_helper'

  describe "reporting" do
    before do
      @flight = Flight.new(
        :number => 'BA-12345',
        :airline => 'British Airways',
        :from => @lhr,
        :to => @jfk,
        :departure => Time.utc(2014, 11, 1, 14, 47),
        :speed_kph => 790,
        :bearing => 3,
        :aircraft => "Boeing 747"
      )
			# @jfk.arrivals << @flight
		end



	it "should display the flight list in text format" do
		report = <<-REPORT 
=============================================================
| Flight No. | Airline         | From | Estimated Arrival Time|
=============================================================
| BA-12345   | British Airways | LHR  | 21:47                 |
			REPORT
		end
end
	