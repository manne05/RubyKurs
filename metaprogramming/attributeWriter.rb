# Beispiel für MetaProgramming -- Attribute zur Laufzeit erzeugen und setzen
module AttributeWriter
  def attribute_writer(attribute_name)
    define_method("#{attribute_name}=") do |new_value|
      instance_variable_set "@#{attribute_name}", new_value
    end
  end
end

class MyClass
  extend AttributeWriter

  attribute_writer :my_int_attr
  attribute_writer :my_string_attr
end

puts MyClass.new.my_int_attr = 5
puts MyClass.new.my_string_attr = "Hello"
