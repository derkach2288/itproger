class Person
    attr_accessor :first_name, :middle_name, :age, :film

    def initialize(first_name, middle_name, age)
        @first_name = first_name
        @middle_name = middle_name
        @age = age

        @film = nil
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


  # Это сеттер — метод, который мы будем использовать для записывания фильма
  # в экземпляр класса Person.
  #
  # Обратите внимание на знак «=» в конце названия метода. Это позволяет вызвать
  # этот метод с оператором присваивания. Если мы объявим такой метод у класса
  # Person, то в основной программе сможем написать
  #
  # person = Person.new(...)
  # person.film = Film.new(...)
  #
  # Это удобно и наглядно
    def film=(film)
        @film = film
    end

    

end

