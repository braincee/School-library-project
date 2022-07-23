require './person'

class Student < Person
  def initialize(age, classroom, name, parent_permission: true)
    super(age, name, parent_permission)
    @classroom = classroom
    classroom.add_student(self) unless classroom.includes?(self)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
