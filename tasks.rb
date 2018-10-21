tasks = []
tasks << {text: "Ruby lernen", start: Time.now}
puts tasks

class Task
  attr_accessor :title

  include Comparable

  def initialize(title)
    @title = title
  end

  # Compare by lowercase name
  def <=>(other)
    title.downcase <=> other.title.downcase
  end
end

puts Task.new("Learn Ruby").respond_to? :between?
puts Task.new("Learn Ruby") < Task.new("get certificate")
