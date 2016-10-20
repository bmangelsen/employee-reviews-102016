require 'minitest/autorun'
require 'minitest/pride'
require_relative './department'

class DepartmentTest < Minitest::Test

  def self.test_order
      :alpha
  end

  def test_class_exists
    assert Department
  end

end
