require_relative "./attrPredicate"

class Human
  extend AttrPredicate

  attr_predicate :first_name, :last_name

  def initialize(name = "")
    @first_name, @last_name = name.to_s.split(/\s+/, 2)
  end
end

Human.new.first_name? # => something falsy
Human.new.last_name? # => something falsy

Human.new("John").first_name? # => something truthy
Human.new("John").last_name? # => something falsy

Human.new("John Smith").first_name? # => something truthy
Human.new("John Smith").last_name? # => something truthy
