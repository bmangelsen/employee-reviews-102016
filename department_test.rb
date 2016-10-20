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

  def bobs_info
    ["Bob Smith", "bsmith@gmail.com", "864-555-9999", 50000]
  end

  def jill
    jill = Employee.new("Jill Potts", "jpotts@gmail.com", "864-555-8888", 55000)
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

  def test_add_employees
    assert_equal [bobs_info], finance.add_employee(bob.employee_info)
    assert_equal 1, finance.employees.size
  end

end
