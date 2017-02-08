require_relative 'night_writer'
require_relative 'file_reader'
require_relative 'file_writer'

input_filename = ARGV[0]
reader = FileReader.new(input_filename)
braille = reader.read

night_writer = NightWriter.new
plain = night_writer.encode_from_braille(braille)

output_filename = ARGV[1]
writer = FileWriter.new(output_filename)
if plain.length > 80
  plain = plain[0, 80]
end

writer.write(plain)

puts "Created #{output_filename} containing #{plain.length} characters"
