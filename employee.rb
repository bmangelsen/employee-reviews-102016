require 'csv'

class Employee

  attr_accessor :name, :email, :phone_number, :salary, :review_text, :good_response

  def initialize(name, email, phone_number, salary)
    @name = name
    @email = email
    @phone_number = phone_number
    @salary = salary
    @review_text = ""
    @good_response = nil
    CSV.open("my_file.csv", "a") do |csv|
      csv << [name, email, phone_number, salary]
    end
  end

  def give_review(review)
    @review_text = review
  end

  def determine_review_response(review)
    positive_keywords = ["asset", "pleasure", "happy"]
    negative_keywords = ["confusion", "negative", "inadequate"]
    if review.match(positive_keywords.join("|"))
      @good_response = true
    elsif review.match(negative_keywords.join("|"))
      @good_response = false
    else
      nil
    end
  end

  def give_raise
    @salary = salary * 1.05
  end

end
