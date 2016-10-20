require 'minitest/autorun'
require 'minitest/pride'
require_relative './employee'

class EmployeeTest < Minitest::Test

  def self.test_order
      :alpha
  end

  def bob
    bob = Employee.new("Bob Smith", "bsmith@gmail.com", "864-555-9999", 50000)
  end

  def good_review
    "Bob is a huge asset to SciMed and is a pleasure to work with. He quickly knocks out tasks assigned to him, implements code that rarely needs to be revisited, and is always willing to help others despite his heavy workload. When Bob leaves on vacation, everyone wishes he didn't have to go. Last year, the only concerns with Bob's performance were around ownership. In the past twelve months, he has successfully taken full ownership of both Acme and Bricks, Inc. Aside from some false starts with estimates on Acme, clients are happy with his work and responsiveness, which is everything that his managers could ask for."
  end

  def bad_review
    "Bob is a very positive person and encourages those around him, but he has not done well technically this year. There are two areas in which Bob has room for improvement. First, when communicating verbally (and sometimes in writing), he has a tendency to use more words than are required. This conversational style does put people at ease, which is valuable, but it often makes the meaning difficult to isolate, and can cause confusion. Second, when discussing new requirements with project managers, less of the information is retained by Bob long-term than is expected. This has a few negative consequences: 1) time is spent developing features that are not useful and need to be re-run, 2) bugs are introduced in the code and not caught because the tests lack the same information, and 3) clients are told that certain features are complete when they are inadequate. This communication limitation could be the fault of project management, but given that other developers appear to retain more information, this is worth discussing further."
  end

  def test_class_exists
    assert Employee
  end

  def test_class_initialize
    assert_equal "Bob Smith", bob.name
    assert_equal "bsmith@gmail.com", bob.email
    assert_equal "864-555-9999", bob.phone_number
    assert_equal 50000, bob.salary
  end

  def test_for_positive_review
    assert_equal "satisfactory", bob.review_response(good_review)
  end

  def test_for_negative_review
    assert_equal "unsatisfactory", bob.review_response(bad_review)
  end

  def test_give_raise
    assert_equal 52500, bob.give_raise
  end

end
