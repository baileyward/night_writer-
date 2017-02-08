class FileReader
  attr_reader :filename

  def initialize(filename)
    @filename = filename
  end

  def read
    File.read(@filename)
  end
end
