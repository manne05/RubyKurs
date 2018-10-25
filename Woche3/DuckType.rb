# Beispiele für DuckTyping in Ruby - lässt sich eine Methode auf ein Objekt 
# ausführen?
def select(ary)
  unless ary.respond_to? :each
    raise ArgumentError, "Argument not iterable"
  end

  new_ary = []

  ary.each do |e|
    new_ary << e if yield e
  end

  new_ary
end

ary = [1,2,3]
hsh = []
hsh << {text: "Ruby lernen", start: Time.now}
str = "Hallo"
puts select(ary) { |e| e }
puts select(hsh) { |e| e }
puts select(str) { |e| e }
