require './person.rb'

class Student < Person
 
    def initialize(age, name, parent_permission: true, classroom)
        super(age, name, parent_permission)
        @classroom = classroom
    end
end 