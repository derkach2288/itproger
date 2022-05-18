class Product
    attr_accessor :price, :amount

    def initialize(params)   # принимает на вход ассоциативный массив params и записывает в поля значения своих 
        @price = params[:price]   # аргументов, доставая их по соответствующим ключам.
        @amount = params[:amount]      
                                
    end

    def to_s
        "#{@price} грн., осталось #{@amount} шт"
    end


    # Абстрактный метод from_file для продукта не имеет смысла, т.к. абстрактный
  # продукт из файла мы прочитать не сможем (мы не знаем, например, формат),
  # поэтому если он не определен у родителя, он будет возвращать ошибку. Класс
  # ошибки так и называется «ошибка отустствия имлементации».
  def self.from_file(file_path)
    raise NotImplementedError
  end
  
end