require 'minitest/autorun'
require 'minitest/pride'
require_relative './info_for_tests'

class EmployeeTest < Minitest::Test

  def self.test_order
      :alpha
  end

  def info
    @info = InfoForTests.new
  end

  def bob
    @bob = @bob || info.bob
  end

  def good_review
    @good_review = info.good_review
  end

  def bad_review
    @bad_review = info.bad_review
  end

  def test_class_exists
    assert Employee
  end

  def test_class_initialize
    assert_equal "Bob Smith", bob.name
    assert_equal "bsmith@gmail.com", bob.email
    assert_equal "864-555-9999", bob.phone_number
    assert_equal 50000, bob.salary
  end

  def test_give_employee_review
    assert_equal good_review, bob.give_review(good_review)
    assert_equal bad_review, bob.give_review(bad_review)
  end

  def test_for_positive_review
    assert_equal true, bob.determine_review_response(good_review)
  end

  def test_for_negative_review
    assert_equal false, bob.determine_review_response(bad_review)
  end

  def test_give_raise
    assert_equal 52500, bob.give_raise
  end

end
