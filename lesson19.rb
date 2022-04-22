class Car  # название класса всегда с большой буквы
    attr_accessor :speed, :model, :color

    def initialize(speed, model, color)
        @speed = speed
        @model = model
        @color = color
    end
end

bmw = Car.new(230, "X6", "Black")

audi = Car.new(250, "Q7", "White")


puts bmw.speed
puts audi.speed