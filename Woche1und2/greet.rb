# auf mitgegebenes Argument reagieren
case ARGV.first
when "hi"
  puts "Hello #{ARGV.fetch(1)}!"
when "bye"
  puts "Bye #{ARGV.fetch(1)}!"
else
  puts "Available commands: hi, bye"
end
