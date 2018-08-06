require('minitest/autorun')
require('minitest/rg')
require_relative('../library.rb')
class LibraryTest < MiniTest::Test

def test_return_book_info
  library = Library.new()
  book_info = library.get_book_info("the_bible")
  assert_equal({
        title: "the_bible",
        rental_details: {
         student_name: "Mary",
         date: "11/06/18"
        }}, book_info)
end

def test_return_book_rental_details
  library = Library.new()
  book_rental_info = library.get_book_rental_info("the_bible")
  assert_equal({
   student_name: "Mary",
   date: "11/06/18"
  }, book_rental_info)
end

def test_add_book
  library = Library.new()
  library.add_book("great_expectations")
  assert_equal({title:"great_expectations", rental_details: {student_name:"",date:""}}, library.books.last)
end

def test_change_rental
  library = Library.new()
  library.change_rental("the_bible", "Jimmy", "31-08-17")
  assert_equal({title:"the_bible", rental_details: {student_name:"Jimmy",date:"31-08-17"}}, library.get_book_info("the_bible"))
end

end
