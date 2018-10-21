# Message Passing -- Ruby führt nicht die Methode aus, sondern schickt eine
# Nachricht an das Objekt

# Beispiel:
string = "Hello Ruby"
puts string

string = string.send :downcase
puts string

string = string.send :upcase
puts string

