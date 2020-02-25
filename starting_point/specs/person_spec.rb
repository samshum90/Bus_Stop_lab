require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../person')

class TestPerson < MiniTest::Test
 def setup()
   @person1 = Person.new("Jane", 35)
 end

def test_name()
  assert_equal("Jane",@person1.name)
end

def test_age()
  assert_equal(35, @person1.age)
end






end
