# method_missing -- auf unbekannte Methoden antworten
# Aufruf von #method_missing für jede unbekannte "Nachricht"

# Definition in der Klasse
class A
  def method_missing(mth, *args, &block)
    puts "Die Methode #{mth} gibt es nicht ..."
  end
end

puts A.new.doesThisWork?
