# Eingaben vom Benutzer lesen
print "Dein Name: "
name = gets  # Bis zum naechsten Zeilenumbruch lesne
puts "Hallo #{name}"

# Einige Hilfreiche Methoden
name.chomp   # Entfernt Zeilenumbrüche
name.strip   # Entfernt leere Zeichen am Anfang und Ende
puts "Hallo #{name}"
