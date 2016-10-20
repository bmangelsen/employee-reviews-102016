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
    "Bob is a huge asset to SciMed and is a pleasure to work with. He quickly knocks out tasks assigned to him, implements code that rarely needs to be revisited, and is always willing to help others despite his heavy workload. When Xavier leaves on vacation, everyone wishes he didn't have to go. Last year, the only concerns with Xavier performance were around ownership. In the past twelve months, he has successfully taken full ownership of both Acme and Bricks, Inc. Aside from some false starts with estimates on Acme, clients are happy with his work and responsiveness, which is everything that his managers could ask for."
  end

  def bad_review
    "Thus far, there have been two concerns over Bob's performance, and both have been discussed with him in internal meetings. First, in some cases, Bob takes longer to complete tasks than would normally be expected. This most commonly manifests during development on existing applications, but can sometimes occur during development on new projects, often during tasks shared with Andrew. In order to accommodate for these preferences, Bob has been putting more time into fewer projects, which has gone well. Second, while in conversation, Bob has a tendency to interrupt, talk over others, and increase his volume when in disagreement. In client meetings, he also can dwell on potential issues even if the client or other attendees have clearly ruled the issue out, and can sometimes get off topic."
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
    assert_equal "satisfactory", bob.review(good_review)
  end

  def test_for_negative_review
    assert_equal "unsatisfactory", bob.review(bad_review)
  end

end
