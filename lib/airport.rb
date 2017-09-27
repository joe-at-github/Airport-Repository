class Airports  

	attr_reader :code, :location, :arrivals

	def initialize(code:, location:, arrivals:)
		@code = code
		@location = location
		@arrivals = []
	end
	
end