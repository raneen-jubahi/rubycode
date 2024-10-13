require 'csv'
require 'console_table'

class Reader
  def initialize(file_path)
    @file_path = file_path
  end

  def display_content
    data = CSV.read(@file_path, headers: true)
    table = ConsoleTable.new

    # Add headers to the table
    table.headers = data.headers

    # Add rows to the table
    data.each do |row|
      table.add_row(row.fields)
    end

    puts table
  end
end

