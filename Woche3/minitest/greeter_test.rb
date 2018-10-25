require_relative "greeter"
require "minitest/autorun"

class GreeterTest < Minitest::Test
  def setup  # neues Objekt instanziieren
    @greeter = Greeter.new
  end

  def test_that_greeter_yells
    assert_equal "HI THERE!", @greeter.greet("hi there!")
  end

end
