class Bowling 
    attr_reader :score 

    def initialize 
        @score = 5
    end

    def hit(pin_count)
        @score += pin_count
    end
end