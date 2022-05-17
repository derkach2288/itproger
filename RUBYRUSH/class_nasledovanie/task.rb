class Task < Post
    def initialize
        super

        @due_date = Time.now
    end

    def read_from_console
    end

    def to_strings  # Массив из трех строк: адрес ссылки, описание и дата создания
    end

end