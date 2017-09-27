require_relative 'spec_helper'


describe Report do

  describe "TextReport" do
    before do
      skip
      @report = TextReport.new(headings: ["Flight No.", "Airline", "From", "Estimated Arrival Time"],
            rows: [["BA-12345", "British Airways", "LHR", "21:47"], ["AL-666", "Alitalia", "LHR", "21:47"]])
    end

    it "should display the flight list in text format" do
      expected = <<-REPORT
====================================================================================================
Flight No              | Airline                | From                   | Estimated arrival time |
====================================================================================================
BA-12345               | British Airways        | LHR                    | 21:47                  |
----------------------------------------------------------------------------------------------------
AL-666                 | Alitalia               | LHR                    | 21:47                  |
----------------------------------------------------------------------------------------------------
REPORT
      # binding.pry
      expected.must_equal(@report.make_report)
      
    end

  end

  describe HtmlReport do
    before do
      @report = HtmlReport.new(headings: ["Flight No.", "Airline", "From", "Estimated Arrival Time"],
        rows: [["BA-12345", "British Airways", "LHR", "21:47"], ["AL-666", "Alitalia", "LHR", "21:47"]])
    end

    it "should display the flight list in html format" do
      expected = <<-REPORT
<!DOCTYPE html>
<html>
  <body>
    <table>
      <thead>
        <tr>
          <th>Flight No.</th>
          <th>Airline</th>
          <th>From</th>
          <th>Estimated Arrival Time</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>BA-12345</td>
          <td>British Airways</td>
          <td>LHR</td>
          <td>21:47</td>
        </tr>
      </tbody>
    </table>
  </body>
</html>
REPORT

      expected.must_equal(@report.make_report)
    end

  end
end