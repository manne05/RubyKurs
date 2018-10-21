class Speaker
  def say(message = "Hi")
    puts message
  end
end

class Yeller < Speaker
  def say(message)
    super message.upcase
  end
end

class Talker < Speaker
  def say(message)
    super                 #Aufruf mit aktuellen Parameteren
    super message.upcase #Aufruf mit bestimmten Parametern
    super()              #Aufruf explizit ohne Parameter
  end
end

class Greeter < Yeller
  def greet(message)
    puts message
  end
end

Talker.new.say "Hello"
Greeter.new.say "hi there!"
puts Greeter.ancestors
