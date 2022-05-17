# Послушные дети
# Создайте класс Родителя и унаследуйте от него класс Ребёнка.

# Сделайте так, чтобы родителю при создании можно было задать имя, а с помощью метода name у экземпляра класса 
# можно было это имя посмотреть.

# Создайте метод послушности так, чтобы все родители были послушные, а дети — нет.


class Parent
    attr_reader :name

    def initialize (name)
        @name = name

    end

    def obedient 
        true
    end


end


class Child < Parent

    def obedient
        false
    end
end

papa = Parent.new("Василий Петрович")

masha = Child.new("Маша")
kolya = Child.new("Коля")

puts " Папа #{papa.name} послушный: #{papa.obedient}"

puts " Ребенок #{masha.name} послушный: #{masha.obedient}"

puts " Ребенок #{kolya.name} послушный: #{kolya.obedient}"