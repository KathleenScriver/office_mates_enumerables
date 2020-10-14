require 'minitest/autorun'
require 'minitest/pride'
require './lib/office_mate'

class OfficeMateTest < MiniTest::Test
  def test_it_exists_with_name_and_age
    jim = OfficeMate.new("Jim", 29)

    assert_instance_of OfficeMate, jim
    assert_equal "Jim", jim.name
    assert_equal 29, jim.age 
  end
end
