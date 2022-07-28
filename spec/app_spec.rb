require_relative('../app')

describe App do
  it 'should be return available books' do
    books = App.new
    books.all_books
    expect(books.all_books).to match_array([])
  end

  it 'should be return available people' do
    people = App.new
    people.all_people
    expect(people.people).to match_array([])
  end

  it 'should be return available people' do
    people = App.new
    people.all_people
    expect(people.people).to match_array([])
  end

  it 'the add_person method should work correctly' do
    person = App.new
    person.add_person({ 'teacher' => 'teach', 'id' => '7', 'age' => '34', 'specialization' => 'Eng',
                        'name' => 'James' })
    expect(person.people.length).to be(1)
  end

  it 'the rental method should work correctly' do
    person = App.new
    person.add_rental({ 'rental_instance' => 'Rental', 'date' => '2022/11/2',
                        'book_title' => 'The catcher in the Rye' })
    expect(person.rentals.length).to be(1)
  end
end
