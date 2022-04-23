class Transport
    attr_accessor :color, :wheels

    def sayBip
        puts "Bip Bip" 
    end
end

class Cars < Transport  # "<" означает унаследовать, т.е. class Cars унаследует все от класса Transport
    attr_accessor :isMechanic

    def saySome
        puts @wheels 
    end
end

class Moto < Transport

end

bmw = Cars.new()
audi = Cars.new()
bmw.color = "Red"
audi.wheels = 4

puts bmw.color
puts audi.sayBip
puts audi.saySome