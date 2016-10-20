require 'minitest/autorun'
require 'minitest/pride'
require_relative './department'
require_relative './employee'

class DepartmentTest < Minitest::Test

  def self.test_order
      :alpha
  end

  def bob
    bob = Employee.new("Bob Smith", "bsmith@gmail.com", "864-555-9999", 50000)
  end

  def finance
    finance = Department.new("Finance")
  end

  def test_class_exists
    assert Department
  end

  def test_class_initialize
    assert_equal "Finance", finance.department_name
  end

  def test_add_employees
    assert_equal ["Bob Smith", "bsmith@gmail.com", "864-555-9999", 50000], finance.add_employee_to_department(bob)
  end

end
