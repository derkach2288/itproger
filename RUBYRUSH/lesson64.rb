# Магазин, заготовка
# Напишите заготовку для небольшого магазинчика, который торгует фильмами и книгами.

# Создайте класс продукта, у экземпляров которого есть два поля: цена и количество на складе. При создании нового продукта 
# можно передать значения цены и остатка. Для этих переменных сделайте геттеры.

# Унаследуйте от этого класса два других: книгу и фильм соответственно. Своих переменных у этих классов пока нет.

# Создайте в основной программе какой-нибудь продукт, например «фильм Леон». Выведите его стоимость в консоль.

class Product
    attr_accessor :price, :amount

    def initialize(params)   # принимает на вход ассоциативный массив params и записывает в поля значения своих 
        @price = params[:price]   # аргументов, доставая их по соответствующим ключам.
        @amount = params[:amount]      
                                    # def initialize(price, amount)                   
                                    #   @price = price 
                                    #   @amount = amount
                                    # end
    end

end


class Book < Product

end

class Movie < Product
    attr_accessor :name

    def initialize(params)
    super
    @name = params[:name]
    end

end


king = Book.new(price: 400, amount: "5 шт")
puts " Фильм Король стоит #{king.price} грн, в наличии #{king.amount}"
puts
leon = Movie.new(price: 300, amount: "3 шт", name: "Леон")
puts " Фильм #{leon.name} стоит #{leon.price} грн, в наличии #{leon.amount}"
