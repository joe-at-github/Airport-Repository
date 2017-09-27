Plane = Struct.new(:temp, :altitude, :indicated_airspeed) do


	CELSIUS_FARENHEIT = 0 * 1.8 + 32

	def convert
		temp.CELSIUS_FARENHEIT
	end

	def true_airspeed
		altitude = 15000
    indicated_airspeed = 10
    indicated_airspeed * (1 + altitude/1000 * 0.02)
	end

end

     