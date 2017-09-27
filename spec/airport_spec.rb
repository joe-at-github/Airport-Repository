require_relative 'spec_helper'

describe Airport do 

	before do
		@lhr = Airport.new(code: 'LHR', location: @departure)
		@jfk = Airport.new(code: 'JFK', location: @arrivals)
	end

	def arrival_list
		seperator = " | "
		io = String.new
		#line 
		io.puts self.line
		#build a string of headings
		io.puts headings.join(seperator)
		#line
		io.puts self.line
		#looping through each row
		
		#build a string for each row
		#build a thin line

	
		
	end
	
end
	#headings
	def headings
		["Flight No.", "Airline", "From", "Estimated Arrival Time"]
	end


	def line
		headings_length = headings.map do |item|
			item.length
	end
	


