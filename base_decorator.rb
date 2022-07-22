require './nameable.rb'

class BaseDecorator
    def initialize(nameable = nameable.new())
        super()
        @nameable = nameable
    end
end
