require './person.rb'

class Teacher
    def initialize(age, name = 'Unknown', parent_permission: true, specialization)
        super(age, name, parent_permission)
        @specialization = specialization
    end
    
end
