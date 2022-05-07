class Person
    attr_accessor :first_name, :middle_name, :age

    def initialize(first_name, middle_name, age)
        @first_name = first_name
        @middle_name = middle_name
        @age = age
    end

    def full_name
        if @age >= 60
            puts "#{@first_name} #{@middle_name}"
            puts "Ему #{age} - пожилой"
        else 
            puts "#{@first_name}"
            puts "Ему #{age} - молодой"
        end
    end 

end


pers1 = Person.new('Василий', 'Петрович', 65)
pers2 = Person.new('Юрий', 'Иванович', 32)

pers1.full_name
puts
pers2.full_name
