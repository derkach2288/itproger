class Link < Post

    def initialize
        super      # вызывает метод с таким же названием у родительского класса, то есть initialize

        @url = ""
    end

    def read_from_console 
    end

    def to_strings  # Массив из трех строк: адрес ссылки, описание и дата создания
    end

end