# Monkey Patching 
# Klassen in Ruby erweitern
class Numeric
  def answer?
    self == 42
  end

  def days   # Dauer mehrerer Tage in Sekunden zurückgeben
    self * 24 * 60 * 60
  end
end

puts 21.answer?
puts 5.5.answer?
puts 42.answer?

print "2 Tage sind: ", 2.days, " Sekunden\n"
puts "2,5 Tage sind: ",2.5.days

