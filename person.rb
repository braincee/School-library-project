class Person

def initialize(age, name='Unknown', parent_permission: true)
        @id = Random.rand(1..100)
        @name = name 
        @age = age
        @parent_permission = parent_permission
    end

    attr_reader :id

    attr_accessor :name, :age

     def can_use_services?
        true if @age >= 18 || parent_permission == true
    end

end