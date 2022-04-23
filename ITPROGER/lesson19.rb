class Car  # название класса всегда с большой буквы
    attr_accessor :speed, :model, :color

    def initialize(speed, model, color)
        @speed = speed
        @model = model
        @color = color
    end

    def x
        if @speed > 200
            return true
        end
    return false
    end
end

bmw = Car.new(199, "X6", "Black")

audi = Car.new(250, "Q7", "White")


puts bmw.x
puts audi.x