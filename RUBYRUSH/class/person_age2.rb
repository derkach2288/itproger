class Person

    def initialize(first_name, middle_name, age)
        @first_name = first_name
        @middle_name = middle_name
        @age = age
    end

    def old?
        return @age >= 60
    end

    def full_name
        if old?
            puts "#{@first_name} #{@middle_name}"
            puts "Ему #{age} - пожилой"
        else 
            puts "#{@first_name}"
            puts "Ему #{age} - молодой"
        end
    end 

    def age                   # геттер для возраста, вместо attr_accessor :age
        return @age
    end

end


pers1 = Person.new('Василий', 'Петрович', 61)
pers2 = Person.new('Юрий', 'Иванович', 32)

pers1.full_name
puts
pers2.full_name