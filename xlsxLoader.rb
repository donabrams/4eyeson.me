require 'roo'

filename = "EnglishData.xlsx"
sheet = Excelx.new(filename)
print "["
sheet.first_row.upto(sheet.last_row) do |row|
  print "["
  sheet.first_column.upto(sheet.last_column) do |col|
    print "\"#{sheet.cell(row, col)}\""
    print "," if sheet.last_column != col
  end
  print "]"
  print "," if sheet.last_row != row
end
print "]\n"
