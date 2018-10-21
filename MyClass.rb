# Klassendefinition
# class MyClass
#   def initialize(arg1,arg2)
#     @arg1 = arg1
#     @arg2 = arg2
#   end
# end

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
    super  # Aufruf mit aktuellen Parametern
    super message.upcase   # Aufruf mit bestimmten Parametern
    super()   # Aufruf explizit ohne Parameter
  end
end


Yeller.new.say "Yeller cries Hello"
Talker.new.say "Talker talks Hello"


# Objektmethoden
class Task
  def description
    "An awful lot of work"
  end

  def short_description
    description[0..11]
  end

  def self.max_working_hours
    8
  end

  def overtime?
    @duration > self.class.max_working_hours
  end
end

myTask = Task.new
puts myTask.description
puts myTask.short_description
