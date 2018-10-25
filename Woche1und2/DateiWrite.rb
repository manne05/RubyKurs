# Datei zum Schreiben öffen
File.open "numbers2.txt","w" do |file|
  file.write "4 5 6"
end    # existierende Datei wird hier ueberschrieben

# Zeile für Zeile schreiben
File.open "numbers3.txt","w" do |file|
  file.puts "4","5"
  file.puts "6"
end
