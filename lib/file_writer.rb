class FileWriter
  attr_reader :filename

  def initialize(filename)
    @filename = filename
  end

  def write(output)
   File.open(@filename, 'w') { |f| f.puts output }
  end

end
