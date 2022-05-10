class ResultPrinter

  def initialize                   # В конструкторе мы прочитаем все изображения виселиц и запишем каждое из низ в отдельный элемент массива. 
    @status_image = []             #  Создадим переменную экземпляра @status_image — массив, хранящий изображения виселиц.


    current_path = File.dirname(__FILE__)   # Сохраним текущее положение файла программы, чтобы с его помощью позже собрать путь к каждой картинке.
    counter = 0                # Создадим переменную для счетчика шагов в цикле

    while counter <=7                       # В цикле прочитаем 7 файлов из папки image и запишем из содержимое в массив
      file_name = current_path + "/image/#{counter}.txt"  # Соберем путь к файлу с изображением виселицы. Каждыый из них лежит 
                                                          # в папке /image/ и называется 0.txt, 1.txt, 2.txt и т. д.
        if File.exist?(file_name)    # Ести такой файл существует, считываем его содержимое целиком и кладем
                                     # в массив одной большой строкой. Обратите внимание, что вторым
                                     # параметром при чтении мы явно указываем кодировку файла.
          f = File.new(file_name, "r:UTF-8")
          @status_image << f.read
          f.close
        else
          @status_image << "\n[ Изображение не найдено ]\n"   # Если файла нет, вместо соответствующей картинки будет «заглушка»
        end
        counter +=1
    end


  end

    def print_status(game)

        cls

        puts "\nСлово: " + get_word_for_print(game.letters, game.good_letters)
    
        puts "Ошибки (#{game.errors}): #{game.bad_letters.join(", ")}"    
              
        print_viselica(game.errors)
    
        if game.errors >= 7
            puts "Вы проиграли :( Загаданное слово - #{game.letters.join}"
        else
            if (game.letters - game.good_letters).empty?
                puts "Поздравляем! Вы вииграли! \n\n"
            else
                puts "У вас осталось попыток: " + (7 - game.errors).to_s
            end
        end
    
    
    end

    def get_word_for_print(letters, good_letters)
        res = ""
        for item in letters do
            if good_letters.include? item 
                res += item + " "
            else res += "__ "
            end
        end
    
        return res
    
    end

    def cls
        system "clear" or system "cls"
    end

    
  # Метод print_viselitsa будет рисовать виселицу, соответствующую текущему
  # количеству ошибок. Единственнй параметро этого метода — целое число errors.
    def print_viselica(errors)
                                # Так как ранее (в конструкторе) мы все картинки загрузили в массив
                                # @status_image, сейчас чтобы вывести на экран нужную виселицу, достаточно
                                # в качестве параметра puts указать нужный элемент этого массива.
      puts @status_image[errors]
    end


end