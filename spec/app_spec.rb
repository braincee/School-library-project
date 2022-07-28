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
    person.add_person({ 'teacher' => 'teacher', 'id' => '777', 'age' => '34', 'specialization' => 'English', 'name' => 'James Clear'} )
    expect(person.people.length).to be(1)
  end 

  it 'the rental method should work correctly' do 
    person = App.new 
    person.add_rental({'rental_instance'=>'Rental','date'=>'2022/11/2','book_title'=>'The catcher in the Rye'})
    expect(person.rentals.length).to be(1)
  end 
end 

# person = double('person')  
    
#     allow(person).to receive(:teacher_instance, :id, :age, :specialization, :name) data = { 'teacher', '777', '34', 'English', 'James Clear'} 
    
#     cr = ClassRoom.new [person]
#     expect(cr.list_student_names).to eq('John Smith,Jill Smith') 