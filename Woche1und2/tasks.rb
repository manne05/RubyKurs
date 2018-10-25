# Protokoll ueber Aufgaben mit Hilfe eines hashes implementieren

tasks = []
tasks << {text: "Kursseite vorbereiten", start:Time.new(2018,6,1,10,0,0), end: Time.new(2018,6,1,14,0), tag: "ruby2018"}
tasks << {text: "Videos Woche 1 aufnehmen", start:Time.new(2018,8,1,10,0,0), end:Time.new(2018,8,1,11,0), tag: "ruby2018"}
tasks << {text: "Bug beheben", start:Time.new(2018,8,3,13,0,0), end:Time.new(2018,8,6,17,0), tag: "openhpi"}
tasks << {text: "Redesign der Emails", start:Time.new(2018,8,6,10,0,0), end:Time.new(2018,8,6,18,30), tag: "openhpi"}
tasks << {text: "Teaser-Video schneiden", start:Time.new(2018,8,28,9,0,0), end:Time.new(2018,8,28,11,0), tag: "ruby2018"}
tasks << {text: "Kurs-Announcement verschicken", start:Time.new(2018,9,3,10,0,0), end:Time.new(2018,9,3,10,10), tag: "ruby2018"}
tasks << {text: "Hausaufgabe Woche 1 ausprobieren", start:Time.new(2018,9,13,10,0,0), end:Time.new(2018,9,13,14,0), tag: "ruby2018"}
tasks << {text: "IRB-Video aufnehmen", start:Time.new(2018,9,28,17,0,0), tag: "ruby2018"}

puts tasks

# nicht beendete tasks finden
puts tasks.select { |t| !t[:end]}
