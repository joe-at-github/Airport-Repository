require_relative 'spec_helper'

describe Airport do 

    before do 
        @departure = Point.new(lat: 51.4700223, lng: -0.4542955)
        @arrival = Point.new(lat: 40.6413111, lng: -73.77813909999999)
        @lhr = Airport.new(code: 'LHR', location: @departure)
        @jfk = Airport.new(code: 'JFK', location: @arrival)
    end 


    describe 'reporting' do
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

            @flight2 = Flight.new(
          :number => 'AL-666',
          :airline => 'Alitalia',
          :from => @lhr,
          :to => @jfk,
          :departure => Time.utc(2014, 11, 1, 14, 47),
          :speed_kph => 900,
          :bearing => 3,
          :aircraft => "Airbus 747"
            )

            @jfk.arrivals << @flight
            @jfk.arrivals << @flight2 
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


        @jfk.arrival_list.must_equal(report)
        end

    end
  end