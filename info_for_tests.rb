require_relative './department'
require_relative './employee'

class InfoForTests
  attr_accessor :bob, :jill, :padme, :finance, :good_review, :bad_review
  def initialize
    @bob = Employee.new("Bob Smith", "bsmith@gmail.com", "864-555-9999", 50000)
    @jill = Employee.new("Jill Potts", "jpotts@gmail.com", "864-555-8888", 55000)
    @padme = Employee.new("Padme Amidala", "padme@naboo.gov", "1-800-STRWARS", 60000)
    @finance = Department.new("Finance")
    @good_review = "Employee is a huge asset to SciMed and is a pleasure to work with. Employee quickly knocks out tasks assigned to him/her, implements code that rarely needs to be revisited, and is always willing to help others despite his/her heavy workload. When employee leaves on vacation, everyone wishes he/she didn't have to go. Last year, the only concerns with employee's performance were around ownership. In the past twelve months, he/she has successfully taken full ownership of both Acme and Bricks, Inc. Aside from some false starts with estimates on Acme, clients are happy with his/her work and responsiveness, which is everything that his/her managers could ask for."
    @bad_review = "Employee is a very positive person and encourages those around him/her, but he/she has not done well technically this year. There are two areas in which employee has room for improvement. First, when communicating verbally (and sometimes in writing), he/she has a tendency to use more words than are required. This conversational style does put people at ease, which is valuable, but it often makes the meaning difficult to isolate, and can cause confusion. Second, when discussing new requirements with project managers, less of the information is retained by employee long-term than is expected. This has a few negative consequences: 1) time is spent developing features that are not useful and need to be re-run, 2) bugs are introduced in the code and not caught because the tests lack the same information, and 3) clients are told that certain features are complete when they are inadequate. This communication limitation could be the fault of project management, but given that other developers appear to retain more information, this is worth discussing further."
  end
end
