class Application
  def initialize(path)
    @fetcher = Fetcher.new(path)
  end

  def run
    csv_files = @fetcher.fetch_csv_files
    return puts "No CSV files found in the directory." if csv_files.empty?

    prompt = TTY::Prompt.new
    selected_file = prompt.select("Select a CSV file to display:", csv_files)

    reader = Reader.new(selected_file)
    reader.display_content
  end
end

