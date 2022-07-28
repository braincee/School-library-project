require_relative('../classroom')
require_relative('../student')

describe Classroom do
  before :each do
    @classroom = Classroom.new('Physics Classroom')
    @student = Student.new('777', 23, 'James Clear', parent_permission: true)

    @classroom.add_student(@student)
  end

  it 'display classroom label' do
    expect(@classroom.label).to eq 'Physics Classroom'
  end

  it 'should add student to a particular cllassroom' do
    expect(@classroom.students.length).to be(1)
  end
end
