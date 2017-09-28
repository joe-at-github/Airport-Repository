class Report
	
	def initialize(headings:, rows:)
		@headings = headings
		@rows = rows
	end	

	
	def make_report
		@io = StringIO.new
		make_headings
		make_rows
		@io.string 
  end
  
  protected
	def make_headings
	end

	def make_rows
	end

end





