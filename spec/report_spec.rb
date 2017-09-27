require_relative 'spec_helper'

describe Report do 

    before do
        @report = Report.new(headings: ["Flight No.", "Airline", "From", "Estimated Arrival Time"],
            rows: [["BA-12345", "British Airways", "LHR", "21:47"], ["AL-666", "Alitalia", "LHR", "21:47"]])
    end

    it 'should display the flight list in the text format' do
            report = <<-REPORT 
====================================================================================================
Flight No              | Airline                | From                   | Estimated arrival time |
====================================================================================================
BA-12345               | British Airways        | LHR                    | 21:47                  |
----------------------------------------------------------------------------------------------------
AL-666                 | Alitalia               | LHR                    | 21:47                  |
----------------------------------------------------------------------------------------------------
REPORT

				# binding.pry
        @report.make_report.must_equal(report)
        end


end




