require 'minitest/autorun'
require 'minitest/pride'
require './lib/office_mate'
require './lib/office'

class OfficeTest < MiniTest::Test
  def setup
    @jim = OfficeMate.new("Jim", 29)
    @pam = OfficeMate.new("Pam", 28)
    @michael = OfficeMate.new("Michael", 42)
    @toby = OfficeMate.new("Toby", 37)
    @kevin = OfficeMate.new("Kevin", 30)
    @dwight = OfficeMate.new("Dwight", 27)
    @ryan = OfficeMate.new("Ryan", 20)
    @mates = [@jim, @pam, @michael, @toby, @kevin, @dwight, @ryan]

    @office = Office.new(@mates)
  end

  def test_it_exists
    assert_instance_of Office, @office
  end

  def test_it_has_mates
    assert_equal @mates, @office.mates
  end

  def test_it_can_find_youngest_mate
    assert_equal @ryan, @office.youngest_mate
  end

  def test_it_can_find_longest_name
    skip
    assert_equal @michael, @office.longest_name
  end

  def test_it_can_sort_by_age
    skip
    expected = [@ryan, @dwight, @pam, @jim, @kevin, @toby, @michael]
  end

  def test_it_finds_names_starting_with_M
    skip
    assert_equal [@michael], @office.names_with_m
  end

  def test_it_finds_under_age_mates
    skip
    assert_equal [@ryan], @office.under_age
  end

  def test_it_sorts_by_last_letter_of_name_descending_order
    skip
    expected = [@toby, @dwight, @ryan, @kevin, @pam, @jim, @michael]

    assert_equal expected, @office.odd_order
  end

  def test_it_tests_for_michael_over_30
    skip
    assert_equal true, @office.one_old_michael?
  end
end
