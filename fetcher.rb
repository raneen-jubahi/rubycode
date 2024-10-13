require 'tty-prompt'

class Fetcher
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def fetch_csv_files
    Dir.glob(File.join(path, '*.csv'))
  end
end

