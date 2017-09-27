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
    
    def arrival_list
        io = StringIO.new

        io.puts self.line

        io << headings.map { |heading| heading.ljust(column_width) }.join(separator)
        io.puts separator.rstrip

        io.puts self.line 

        self.arrivals.each do |arrival|
            number = arrival.number
            airline = arrival.airline
            code = arrival.from.code
            time = self.arrival_time

            row = [number, airline, code, time]
  
            io << row.map { |cell| cell.ljust(column_width) }.join(separator)
            io.puts separator.rstrip
            io.puts line("-")
        

        io.string 
    end

    def line(style = "=")
      column_nb = headings.count

      total_width = column_width * column_nb + column_nb * separator.length
      style * total_width
    end

    def headings
        ["Flight No","Airline","From","Estimated arrival time"]
    end
      
    private
    def separator
        " | "
    end

    def column_width
        headings.map { |item| item.length }.max
    end

end