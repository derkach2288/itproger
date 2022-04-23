class Transport
    attr_accessor :color, :wheels

    def sayBip
        puts "Bip Bip" 
    end
end

class Cars < Transport  # "<" означает унаследовать, т.е. class Cars унаследует все от класса Transport
    attr_accessor :isMechanic

    def sayBip
        puts "Bip Bip 2" 
    end
end

class Moto < Transport

end

bmw = Cars.new()
audi = Cars.new()
bmw.color = "Red"

puts bmw.color
puts audi.sayBip