class Car  # название класса всегда с большой буквы
    attr_accessor :speed, :model, :color
end

bmw = Car.new()
bmw.speed = 230
bmw.model = "X6"
bmw.color = "Black"

audi = Car.new()
audi.speed = 250
audi.model = "Q7"
audi.color = "White"

puts bmw.speed
puts audi.speed
