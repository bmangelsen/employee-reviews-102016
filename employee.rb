class Employee

  attr_accessor :name, :email, :phone_number, :salary

  def initialize(name, email, phone_number, salary)
    @name = name
    @email = email
    @phone_number = phone_number
    @salary = salary
  end

  def review_response(review)
    positive_keywords = ["asset", "pleasure", "happy"]
    negative_keywords = ["confusion", "negative", "inadequate"]
    if review.match(positive_keywords.join("|"))
      "satisfactory"
    else
      review.match(negative_keywords.join("|"))
      "unsatisfactory"
    end
  end

  def give_raise
    @salary = salary * 1.05
  end

end
