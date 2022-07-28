require_relative('../teacher')

describe Teacher do
  teacher = Teacher.new(25, 'Databases', 'Eric Mahare')
  it 'should return correct age value' do
    expect(teacher.age).to be(25)
  end
  it 'should return correct specialization value' do
    expect(teacher.specialization).to eq('Databases')
  end
  it 'should return correct specialization value' do
    expect(teacher.name).to eq('Eric Mahare')
  end
  it 'should return unknown if name is not specified' do
    teacher = Teacher.new(25, 'Databases')
    expect(teacher.name).to eq('Unknown')
  end
  it 'should return true' do
    expect(teacher.can_use_services?).to be(true)
  end
end
