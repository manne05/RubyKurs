module AttrPredicate
#
  def attr_predicate(firstname, lastname)
    define_method("#{attr_predicate}=") do |new_attr|
      instance_variable_get "@#{attr_predicate}", new_attr
    end
  end
    
#  attr_reader :name
  
end
