require_relative 'spec_helper'

  describe "reporting" do
    before do
      @report = Report.new

    end

	it "should display the flight list in text format" do
		report = <<-REPORT 
=============================================================
| Flight No. | Airline         | From | Estimated Arrival Time|
=============================================================
| BA-12345   | British Airways | LHR  | 21:47                 |
			REPORT
			# @report.table.must_equal report
		end
end
	