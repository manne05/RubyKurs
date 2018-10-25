# Hier die Methode map definieren und den Algorithmus implementieren
def map(ary)
  new_ary = []
  ary.each do |e|
    new_ary << yield(e)
  end
  new_ary
end

zeige = map(1..4) { |n| n *2 }
puts zeige
