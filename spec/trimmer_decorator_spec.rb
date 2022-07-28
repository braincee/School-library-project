require_relative('../trimmer_decorator')
require_relative('../capitalize_decorator')
require_relative('../person')

describe TrimmerDecorator do
  before :each do
    @person = Person.new 25, 'maximilianus'
    @capitalize = CapitalizeDecorator.new(@person)
    @trimmer_decorator = TrimmerDecorator.new(@capitalize)
  end
  it 'should slice if string if name is more than 10 characters' do
    expect(@trimmer_decorator.correct_name).to eq 'Maximilian'
    expect(@trimmer_decorator.correct_name.length).to be <= 10
  end
  it 'Should display correct name' do
    expect(@person.correct_name).to eq 'maximilianus'
  end
  it 'should capitalize person name' do
    expect(@capitalize.correct_name).to eq 'Maximilianus'
  end
end
