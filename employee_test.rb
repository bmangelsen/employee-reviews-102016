require 'minitest/autorun'
require 'minitest/pride'
require_relative './employee'

class EmployeeTest < Minitest::Test

  def self.test_order
      :alpha
  end

  def test_class_exists
    assert Employee
  end

  def test_class_initialize
    bob = Employee.new("Bob Smith", "bsmith@gmail.com", "864-555-9999", 50000)
    assert_equal "Bob Smith", bob.name
    assert_equal "bsmith@gmail.com", bob.email
    assert_equal "864-555-9999", bob.phone_number
    assert_equal 50000, bob.salary
  end

end
