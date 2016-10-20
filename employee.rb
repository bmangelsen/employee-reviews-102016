class Employee

  attr_accessor :name, :email, :phone_number, :salary

  def initialize(name, email, phone_number, salary)
    @name = name
    @email = email
    @phone_number = phone_number
    @salary = salary
    @employee_info = []
  end

  def employee_info
    employee_info = [name, email, phone_number, salary]
  end

end
