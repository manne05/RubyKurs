# Struct -- Container für strukturierte Daten
#           Erzeugt Klasse mit Getter, Setter und Konstruktor für
#           angegebene Attributnamen
Person = Struct.new(:name, :age)

john = Person.new("John", 18)
puts john.name
puts john.age

john.name ="Johannes"
john.age = john.age + 2


puts john.name
puts john.age
