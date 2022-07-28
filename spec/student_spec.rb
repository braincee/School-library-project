require_relative('../classroom')
require_relative('../student')

describe Student do
  before :each do
    @classroom = Classroom.new('Physics Classroom')
    @student = Student.new('777', 23, 'James Clear', parent_permission: true)
  end
  it 'should return specified string' do
    expect(@student.play_hooky).to eq "¯\(ツ)/¯"
  end
  it 'should return specified string' do
    @classroom.add_student(@student)
    expect(@classroom.students.length).to be(1)
  end
end
