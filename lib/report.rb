class Report

	def initialize(headings:, rows:)
		@headings = headings
		@rows = rows
	end

	def make_report
		#make_line
    io = StringIO.new

    io.puts self.line

    #make_headings
    io << headings.map { |heading| heading.ljust(column_width) }.join(separator)
    io.puts separator.rstrip

    io.puts self.line 

    #make_rows
    @rows.each do |row|
      io << row.map { |cell| cell.to_s.ljust(column_width) }.join(separator)
      io.puts separator.rstrip
      io.puts line("-")
    end
    

    io.string 
  end

  #table_lines
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





