class Library
  attr_accessor(:books)
def initialize()
  @books = [
    {
      title: "lord_of_the_rings",
      rental_details: {
       student_name: "Jeff",
       date: "01/04/18"
      }
    },
    {
      title: "the_bible",
      rental_details: {
       student_name: "Mary",
       date: "11/06/18"
      }
    },
  ]
end

def get_book_info(book_name)
  for book in @books
    if book[:title] == book_name
      return book
    end
  end
end

def get_book_rental_info(book_name)
  for book in @books
    if book[:title] == book_name
      return book[:rental_details]
    end
  end
end

def add_book(book_name)
  @books.push({title: book_name, rental_details: {student_name: "", date: ""}})
end

def change_rental(book_name, new_name, new_date)
  for book in @books
    if book[:title] == book_name
      book[:rental_details] = {student_name: new_name, date: new_date}
    end
  end
end

end
