class Bridge  # Класс всегда с большой буквы

    def initialize      # Специальный метод initialize играет роль конструктора класса он вызывается при создании объекта данного класса
        puts "мост создан"
        @opened = false   # переменную экземпляра класса всегда начинается с @ и зоздается только в методе initialize.
                          # потом эти переменные доступны в любом методе класса
                          # Начальное значение переменной @opened у нас будет false. 
    end
    
    def open
        puts "мост открывается, можно ехать"
        @opened = true        # Меняем состояние объекта (а конкретно, переменной @opened)
    end

    def is_opened?       # Метод, который позволяет узгать состояние класса (true - если открыт/ false - если закрыт). 
                         # методы, которые возращают булевские значения должны заканчиваться знаком ?
      return  @opened
    end

end
