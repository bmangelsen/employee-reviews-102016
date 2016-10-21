require_relative './employee'
require_relative './employee_test'
require_relative './department_test'

class Department

  attr_accessor :department_name, :department_employees, :review_responses

  def initialize(department_name)
    @department_name = department_name
    @department_employees = []
    @review_responses = []
  end

  def add_employee(employee)
    department_employees << employee
  end

  def sum_all_salaries
    total = 0
    department_employees.each do |el|
      total += el.salary
    end
    total
  end

  def give_department_raises(department_wide_raise)
    deserve_raises = []
    raise_values = []
    department_employees.each do |employee|
      if employee.good_response == true
      deserve_raises << employee
      end
    end
    deserve_raises.each do |employee|
      employee.salary += (department_wide_raise / deserve_raises.count)
    end
    department_employees.each do |employee|
      raise_values << employee.salary
    end
  end
end
