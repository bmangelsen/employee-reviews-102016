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

  def padme
    @padme = @padme || Employee.new("Padme Amidala", "padme@naboo.gov", "1-800-STRWARS", 60000)
  end

  def finance
    @finance = @finance || Department.new("Finance")
  end

  def good_review
    "Bob is a huge asset to SciMed and is a pleasure to work with. He quickly knocks out tasks assigned to him, implements code that rarely needs to be revisited, and is always willing to help others despite his heavy workload. When Bob leaves on vacation, everyone wishes he didn't have to go. Last year, the only concerns with Bob's performance were around ownership. In the past twelve months, he has successfully taken full ownership of both Acme and Bricks, Inc. Aside from some false starts with estimates on Acme, clients are happy with his work and responsiveness, which is everything that his managers could ask for."
  end

  def bad_review
    "Jill is a very positive person and encourages those around her, but she has not done well technically this year. There are two areas in which Jill has room for improvement. First, when communicating verbally (and sometimes in writing), she has a tendency to use more words than are required. This conversational style does put people at ease, which is valuable, but it often makes the meaning difficult to isolate, and can cause confusion. Second, when discussing new requirements with project managers, less of the information is retained by Jill long-term than is expected. This has a few negative consequences: 1) time is spent developing features that are not useful and need to be re-run, 2) bugs are introduced in the code and not caught because the tests lack the same information, and 3) clients are told that certain features are complete when they are inadequate. This communication limitation could be the fault of project management, but given that other developers appear to retain more information, this is worth discussing further."
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
    finance.add_employee(bob)
    finance.add_employee(jill)
    assert_equal 105000, finance.sum_all_salaries
  end

  def test_distribute_raises
    finance.add_employee(bob)
    finance.add_employee(jill)
    finance.add_employee(padme)
    bob.give_review(good_review)
    jill.give_review(bad_review)
    padme.give_review(good_review)
    bob.determine_review_response(bob.review_text)
    jill.determine_review_response(jill.review_text)
    padme.determine_review_response(padme.review_text)
    finance.give_department_raises(20000)
    assert_equal 60000, bob.salary
    assert_equal 70000, padme.salary
    assert_equal 55000, jill.salary
  end

end
