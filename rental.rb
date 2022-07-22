class Rental
  attr_accessor :date, :person, :book

  def initialize(date, person, book)
    @date = date
    @person = person
    book.rentals << self

    @book = book
    person.rentals << self
  end
end
