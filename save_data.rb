require 'json'

def save_data
  save_book
  save_person
  save_rental
end
def save_book
  list_array = @my_app.books.map do |book|
    { book_instance: 'Book', title: book.title, author: book.author }
  end
  books = JSON.generate(list_array)
  File.write('books.json', books)
end
def save_person
  list_people = @my_app.people.map do |person|
    if person.instance_of?(Teacher)
      { teacher_instance: 'Teacher', id: person.id, age: person.age, specialization: person.specialization,
        name: person.name }
    else
      { student_instance: 'Student', id: person.id, age: person.age, classroom: person.classroom,
        name: person.name, parent_permission: person.parent_permission }
    end
  end
  people = JSON.generate(list_people)
  File.write('people.json', people)
end
def save_rental
  list_rentals = @my_app.rentals.map do |rental|
    { rental_instance: 'Rental', date: rental.date, book_title: rental.book.title, person_id: rental.person.id }
  end
  rentals = JSON.generate(list_rentals)
  File.write('rentals.json', rentals)
end
