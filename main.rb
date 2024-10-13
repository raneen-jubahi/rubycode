if __FILE__ == $0
  path = ARGV[0] || './' # Default to current directory if no path is provided
  app = Application.new(path)
  app.run
end

