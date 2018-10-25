# Hier die Methode reduce definieren und den Algorithmus implementieren
def reduce(list,initial)
  sum = initial
  list.each { |e| sum = yield(sum,e) }
  sum
end

puts reduce([1,2,3,4],0) { |sum,n| sum + n }
# puts zeige
