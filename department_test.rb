require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative './info_for_tests'

class DepartmentTest < Minitest::Test

  def self.test_order
    :alpha
  end

  def info
    @info = InfoForTests.new
  end

  def bob
    @bob = @bob || info.bob
  end

  def jill
    @jill = @jill || info.jill
  end

  def padme
    @padme = @padme || info.padme
  end

  def finance
    @finance = @finance || info.finance
  end

  def good_review
    @good_review = info.good_review
  end

  def bad_review
    @bad_review = info.bad_review
  end

  def test_class_exists
    assert Department
  end

  def test_class_initialize
    assert_equal "Finance", finance.department_name
  end

  def test_add_employee_to_department
    assert_equal [bob], finance.add_employee(bob)
    assert_equal [bob, jill], finance.add_employee(jill)
    assert_equal 2, finance.department_employees.size
  end

  def test_get_total_salary
    finance.add_employee(bob)
    finance.add_employee(jill)
    assert_equal 105000, finance.sum_all_salaries
  end

  def test_distribute_raises
    finance.add_employee(bob)
    finance.add_employee(jill)
    finance.add_employee(padme)
    bob.give_review(good_review)
    jill.give_review(bad_review)
    padme.give_review(good_review)
    bob.determine_review_response(bob.review_text)
    jill.determine_review_response(jill.review_text)
    padme.determine_review_response(padme.review_text)
    finance.give_department_raises(20000)
    assert_equal 60000, bob.salary
    assert_equal 70000, padme.salary
    assert_equal 55000, jill.salary
  end

end
