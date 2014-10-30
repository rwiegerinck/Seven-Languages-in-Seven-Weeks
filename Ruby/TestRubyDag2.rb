require_relative "RubyDag2"
require "test/unit"
 
class TestRubyDag2 < Test::Unit::TestCase
 
  def test_grep_functie
    assert_equal("Myname Myname Myname\nMyname Myname\n", Dag2.new().grep_functie() )
  end
 
end