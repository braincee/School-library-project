require 'classroom'
require 'student'
require 'rental'
require 'book'
require 'person'

# person = Person.new(21, 'Brakoa')
# puts person.correct_name
# capitalizedPerson = CapitalizeDecorator.new(person)
# puts capitalizedPerson.correct_name
# capitalizedTrimmedPerson = TrimmerDecorator.new(capitalizedPerson)
# puts capitalizedTrimmedPerson.correct_name

# student = Student.new(22, 'Annor')
# student1 = Student.new(21, 'Owureku')
# student2 = Student.new(22, 'Gyarteng')
# student3 = Student.new(21, 'Tackie') # create students
# class_room = Classroom.new('Senior 3 Room') # create classroom
# class_room.add_student(student)
# class_room.add_student(student1)
# class_room.add_student(student2) # adding individual students to classroom adds classroom to individual students
# student3.add_classroom = class_room # adding classroom to individual classroom adds student to that classroom
# puts class_room.students.count

person = Person.new(23, 'Korankyewaa')
book = Book.new('Gods Must be Crazy', 'James Uys')
Rental.new('14/06/1980', book, person)
