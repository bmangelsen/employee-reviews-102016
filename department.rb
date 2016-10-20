require_relative './employee'

class Department

  attr_accessor :department_name, :employees

  def initialize(department_name)
    @department_name = department_name
    @employees = []
  end

  def add_employee(employee_info)
    employees << employee_info
  end

  def sum_all_salaries
    total = 0
    employees.each do |el|
      total += el[3]
    end
    total
  end
end
