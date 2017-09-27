require_relative 'spec_helper'

describe Airport do 

	before do
		@lhr = Airport.new(code: 'LHR', location: @departure)
		@jfk = Airport.new(code: 'JFK', location: @arrivals)
	end

end