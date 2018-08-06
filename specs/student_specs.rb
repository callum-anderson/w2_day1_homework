require('minitest/autorun')
require('minitest/rg')
require_relative('../student.rb')
class StudentTest < MiniTest::Test

def test_get_student_name
  student = Student.new("Filip", "E24")
  assert_equal("Filip", student.get_name)
end

end
