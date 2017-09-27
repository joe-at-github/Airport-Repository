class Report

	table = Terminal::Table.new do |t|
		t.headings = ['Flight No.', 'Airline', 'From', 'Estimated Arrival Time']
	  t.add_row ['BA-12345', 'British Airways', 'LHR', '21:47']
	  t.style = {:width => 61, :border_x => "=", :border_i => "", :border_bottom => false, :padding_left => 0}
	end


end