require('minitest/autorun')
require('minitest/rg')
require_relative('../student.rb')
class StudentTest < MiniTest::Test

def test_get_student_name
  student = Student.new("Filip", "E24")
  assert_equal("Filip", student.get_name)
end

def test_get_student_cohort
  student = Student.new("Filip", "E24")
  assert_equal("E24", student.get_cohort)
end

def test_change_name
  student = Student.new("Filip", "E24")
  student.change_name("Ben")
  assert_equal("Ben", student.get_name)
end

def test_change_cohort
  student = Student.new("Filip", "E24")
  student.change_cohort("E23")
  assert_equal("E23", student.get_cohort)
end

def test_student_can_talk
  student = Student.new("Filip", "E24")
  assert_equal("I can talk!", student.talk)
end
end
