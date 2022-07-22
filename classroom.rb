class classroom

    attr_accessor :label
    attr_reader :students

    def initialize(label)
        @label = label
        @students =[]
    end

    def add_student(student)
        @student << student
    end
end
