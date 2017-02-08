require_relative 'night_writer'
require_relative 'file_reader'
require_relative 'file_writer'

input_filename = ARGV[0]
reader = FileReader.new(input_filename)
plain = reader.read.chomp

if plain.length > 80
  plain = plain[0, 80]
end

night_writer = NightWriter.new
braille = night_writer.encode_to_braille(plain)

output_filename = ARGV[1]
writer = FileWriter.new(output_filename)
writer.write(braille)

puts "Created #{output_filename} containing #{plain.length} characters"
