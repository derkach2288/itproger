class ResultPrinter


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
    

    def print_viselica(errors)

        case errors
            when 0 # yнарисовать пустую виселицу
                puts '
          _______
          |/
          |
          |
          |
          |
          |
          |
          |
        __|________
        |         |
        '

            when 1 # +1 ошибка
                puts '
                _______
                |/
                |     ( )
                |
                |
                |
                |
                |
                |
              __|________
              |         |
              '
            when 2
              puts '
                _______
                |/
                |     ( )
                |      |
                |
                |
                |
                |
                |
              __|________
              |         |
              '
            when 3
              puts '
                _______
                |/
                |     ( )
                |      |_
                |        \\
                |
                |
                |
                |
              __|________
              |         |
              '
            when 4
              puts '
                _______
                |/
                |     ( )
                |     _|_
                |    /   \\
                |
                |
                |
                |
              __|________
              |         |
              '
            when 5
              puts '
                _______
                |/
                |     ( )
                |     _|_
                |    / | \\
                |      |
                |
                |
                |
              __|________
              |         |
              '
        
            when 6
              puts '
                _______
                |/
                |     ( )
                |     _|_
                |    / | \\
                |      |
                |     / \\
                |    /   \\
                |
              __|________
              |         |
              '
            when 7
              puts '
                _______
                |/     |
                |     (_)
                |     _|_
                |    / | \\
                |      |
                |     / \\
                |    /   \\
                |
              __|________
              |         |
              '
                
        end

    end


end