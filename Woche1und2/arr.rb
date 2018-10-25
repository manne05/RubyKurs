# Hier die Methode reduce definieren und den Algorithmus implementieren
def reduce(list,initial)
  sum = initial
  list.each { |e| sum = yield(sum,e)}
  sum
end

puts reduce([1,2,3,4],5) { |sum,n| sum = sum + n }
puts reduce([],6) { |sum,n| sum = sum + n }
puts reduce(["a","b","c"],"") { |sum,n| sum = sum + n }
puts reduce([],"hi") { |sum,n| sum = sum + n }
# puts zeige
