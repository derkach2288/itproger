class Person

    def initialize(first_name, middle_name)
        @first_name = first_name
        @middle_name = middle_name

    end

    def full_name
        puts "#{@first_name} #{@middle_name}"
    end 

end


pers1 = Person.new('Василий', 'Петрович')
pers2 = Person.new('Юрий', 'Иванович')

pers1.full_name
pers2.full_name

