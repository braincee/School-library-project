require './nameable.rb'

class BaseDecorator < Nameable
    def initialize(nameable = nameable.new())
        super()
        @nameable = nameable
    end

    def correct_name
        @nameable.correct_name
    end
end
