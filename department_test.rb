require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative './department'
require_relative './employee'

class DepartmentTest < Minitest::Test

  def self.test_order
      :alpha
  end

  def bob
    @bob = @bob || Employee.new("Bob Smith", "bsmith@gmail.com", "864-555-9999", 50000)
  end

  def jill
    @jill = @jill || Employee.new("Jill Potts", "jpotts@gmail.com", "864-555-8888", 55000)
  end

  def finance
    @finance = @finance || Department.new("Finance")
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
    assert_equal [bob], finance.add_employee(bob)
    assert_equal [bob, jill], finance.add_employee(jill)
    assert_equal 105000, finance.sum_all_salaries
  end

  def test_distribute_raises
    assert_equal [bob], finance.add_employee(bob)
    assert_equal [bob, jill], finance.add_employee(jill)
    assert_equal [70000, 55000], finance.give_department_raises(20000)
  end

end
