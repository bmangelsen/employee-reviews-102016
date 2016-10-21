class Employee

  attr_accessor :name, :email, :phone_number, :salary, :review_text
  attr_reader :review_response

  def initialize(name, email, phone_number, salary)
    @name = name
    @email = email
    @phone_number = phone_number
    @salary = salary
    @review_text = ""
    @review_response = ""
  end

  def give_review(review)
    review_text = review
  end

  def determine_review_response(review)
    positive_keywords = ["asset", "pleasure", "happy"]
    negative_keywords = ["confusion", "negative", "inadequate"]
    if review.match(positive_keywords.join("|"))
      review_response = "satisfactory"
    elsif review.match(negative_keywords.join("|"))
      review_response = "unsatisfactory"
    else
      nil
    end
  end

  def give_raise
    @salary = salary * 1.05
  end

end
