require_relative('../rental')
require_relative('../person')
require_relative('../book')

describe Rental do
  before :each do
    @person = Person.new(23, 'James Clear', parent_permission: true)
    @book = Book.new('The Whale Rider', 'Kahutia Terangi')
    @rental = Rental.new('2022/03/14', @book, @person)
  end

  it 'should add data to person rentals' do
    expect(@person.rentals.length).to be(1)
  end

  it 'should add data to book rentals' do
    expect(@book.rentals.length).to be(1)
  end
end
