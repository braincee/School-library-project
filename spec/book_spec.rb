require_relative('../book')

describe Book do
  book = Book.new('The Bold', 'Benard Malamud')
  it 'should return title' do
    expect(book.title).to eq('The Bold')
  end
  it 'should return author' do
    expect(book.title).to eq('The Bold')
  end
end
