class Person
    attr_accessor :first_name, :middle_name

end

pers1 = Person.new
pers2 = Person.new

pers1.first_name = "Василий"
pers1.middle_name = "Петрович"

pers2.first_name = "Юрий"
pers2.middle_name = "Иванович"

puts pers1.first_name + " " + pers1.middle_name
puts pers2.first_name + " " + pers2.middle_name
