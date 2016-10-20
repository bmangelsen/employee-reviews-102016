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

  def review(review)
    positive_keywords = ["asset", "pleasure", "happy"]
    negative_keywords = ["confusion", "negative", "inadequate"]
    if review.match(positive_keywords.join("|"))
      "satisfactory"
    else
      review.match(negative_keywords.join("|"))
      "unsatisfactory"
    end
  end
end
