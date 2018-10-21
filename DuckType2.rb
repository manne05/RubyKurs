# Beispiel für DuckTyping
# Alternativen Pfad ausführen
def make_summary(object)
  if object.nil?
    "..."
  elsif object.respond_to?(:take)
    object.take(3).join(", ")
  else
    object.to_s
  end
end

puts make_summary nil
puts make_summary ["A", "B", "C", "D",]
puts make_summary Object.new
puts make_summary "Hallo"
