require_relative './employee'

class Department

  attr_accessor :department_name
  attr_reader :department_employees

  def initialize(department_name)
    @department_name = department_name
    @department_employees = []
    CSV.open("departments.csv", "a") do |csv|
      csv << [department_name]
    end
  end

  def add_employee(employee)
    department_employees << employee
  end

  def sum_all_salaries
    total = 0
    department_employees.each do |employee|
      total = yield(total, employee.salary)
    end
    total
  end

  def give_department_raises(department_wide_raise)
    deserve_raises = []
    department_employees.each do |employee|
      if employee.good_response == true
      deserve_raises << employee
      end
    end
    deserve_raises.each do |employee|
      employee.salary += (department_wide_raise / deserve_raises.count)
    end
  end
end
