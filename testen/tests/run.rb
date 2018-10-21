$LOAD_PATH << File.expand_path("../lib", __dir__)

require "minitest/autorun"

puts "LOAD_PATH #{$LOAD_PATH}"

# Alle Dateinamen im aktuellen Verzeichnis lesen, die auf test.rb enden
Dir["#{__dir__}/*_test.rb"].each do |f|   
	require f
end
