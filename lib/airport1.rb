class Airport 

    attr_accessor :code, :location, :arrivals 

    def initialize(**args)
        args.each do |method_name, value|
            self.send(:"#{method_name}=", value)
        end
        self.arrivals = []
    end

    def arrival_time
        ((self.arrivals[0].departure + self.arrivals[0].estimated_duration.seconds).round).strftime("%H:%M")
    end

end