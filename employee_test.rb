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

end
