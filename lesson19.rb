class Car  # название класса всегда с большой буквы
    attr_accessor :speed, :model, :color

    def initialize(speed)
        puts ("Hello " + speed.to_s)
    end
end

bmw = Car.new(230)
bmw.speed = 230
bmw.model = "X6"
bmw.color = "Black"

audi = Car.new(250)
audi.speed = 250
audi.model = "Q7"
audi.color = "White"

puts bmw.speed
puts audi.speed