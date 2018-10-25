file = File.new "numbers.txt", "r"  # Datei numbers.txt lesend öffnen
puts file.read                      # Inhalt lesen

file.rewind                         # zum Anfang der Datei zurueck
puts file.read(3)                   # die ersten drei Zeichen lesen

file.close                          # Datei schliessen

# Kuerzer mit Block
File.open "numbers.txt", "r" do |file|
  puts file.read
end
# Datei wird automatisch geschlossen

# kompletten Inhalt lesen, mit öffnen und schliessen??
file = File.read "numbers.txt"

# Datei öffnen und verschiedene Methoden anwenden
file = File.new "numbers.txt","r"
puts file.read  # kompletten Inhalt ausgeben
puts file.mtime # Datum der letzten Änderung
puts file.size  # Dateigröße in Bytes
puts "\n\n"

# Eine Datei zeilenweise lesen, Datei ist aufzählbar wie eine Liste
File.open "wisdom.txt", "r" do |file|
  file.each do |line|
    puts line
  end
end
# IO inkludiert auch Enumerable und damit auch #map,#select,..
# siehe https://ruby-doc.org/core-2.5.1/IO.html

File.open "TranskriptTaskListe.txt", "r" do |file|
  file.each do |line|
    puts line
  end
end

File.open "wisdom.txt", "r" do |file|
  puts file.map { |x| x.strip.length }
end

