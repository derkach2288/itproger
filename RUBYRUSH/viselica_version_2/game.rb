class Game    # Основной класс игры Game. Хранит состояние игры и предоставляет функции для
              # развития игры (ввод новых букв, подсчет кол-ва ошибок и т. п.).

    def initialize(slovo)   # Конструктор — вызывается всегда при создании объекта данного класса имеет
                     # один параметр, в него нужно передавать при создании строку к загаданнмы
                     # словом. Например, game = Game.new('молоко').
        @letters = get_letters(slovo)   # массив букв загаданного слова

        @errors = 0   #  текущее количество ошибок, всего можно сделать не более 7 ошибок. Начальное значение — 0.

        @bad_letters = []   # массив угаданных букв
        @good_letters =[]   # массив названных, но неугаданных букв

        @status = 0   # Специальная переменная-индикатор состояния игры (см. метод get_status)
    end

    def get_letters(slovo)   # Метод, который возвращает массив букв загаданного слова
        if (slovo == nil || slovo == "")
            abort
        end
    return slovo.split("")
    end

    # 1. Спросить букву с консоли
    # 2. проверить результат
    def ask_next_letter       # обьединим 2 матода check_result  и get_user_input
        puts "\n Введите следующую букву"
        
        letter = ""

        while letter == "" do
            letter = STDIN.gets.chomp
        end

        next_step(letter)    # После получения ввода, передаем управление в основной метод игры
    end

    # метод next_step должен проверить наличие буквы в загаданном слове
    # или среди уже названных букв (массивы good_letters, bad_letters)
    # аналог метода check_result в первой версии виселицы
    def next_step(bukva)
        
        if @status == -1 || @status == 1 # Предварительная проверка: если статус игры равен 1 или -1, значит игра
            return       # закончена и нет смысла дальше делать шаг. Выходим из метода возвращая пустое значение.                 
        end

        if @good_letters.include?(bukva) || @bad_letters.include?(bukva)   # Если введенная буква уже есть в списке "правильных" или "ошибочных" букв,
            return                                                         # то ничего не изменилось, выходим из метода.
        end

        if @letters.include?(bukva) ||  # Если в слове есть буква запишем её в число "правильных" буква
            (bukva == 'е' && @letters.include?('ё')) ||    # Ввели букву е, а в слове есть буква ё
            (bukva == 'ё' && @letters.include?('е')) ||    # Ввели букву ё, а в слове есть буква е
            (bukva == 'и' && @letters.include?('й')) ||    # Ввели букву и, а в слове есть буква й
            (bukva == 'й' && @letters.include?('и'))

            @good_letters << bukva

            case bukva 
                when 'е'
                @good_letters << 'ё'
                when 'ё'
                @good_letters << 'е'
                when 'и'
                @good_letters << 'й'
                when 'й'
                @good_letters << 'и'
            end
            
            if (@letters - @good_letters).empty?    # Дополнительная проверка — угадано ли на этой букве все слово целиком.
                @status = 1                         # Если да — меняем значение переменной @status на 1 — победа.
            end
        else          
            @bad_letters << bukva      # Если в слове нет введенной буквы — добавляем эту букву в массив «плохих» букв 
            @errors += 1               # и увеличиваем счетчик ошибок.
                if @errors >= 7        # Если ошибок больше 7 — статус игры меняем на -1, проигрыш.
                    @system = -1
                end
        end

    end

    def letters               # Важная фишка Ruby: слово return можно опустить, если это последняя строка
        return @letters       # в методе. Последнее вычисленное значение в методе и будет возвращено.
    end

    def good_letters
        @good_letters
    end

    def bad_letters
        @bad_letters
    end

    def status
        @status
    end

    def errors
        @errors
    end

end