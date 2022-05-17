class Product
    attr_accessor :price, :amount

    def initialize(params)   # принимает на вход ассоциативный массив params и записывает в поля значения своих 
        @price = params[:price]   # аргументов, доставая их по соответствующим ключам.
        @amount = params[:amount]      
                                
    end

    def to_s
        "#{@price} грн., осталось #{@amount} шт"
    end

end