class ResultPrinter


    def print_status(game)

        cls

        puts "\nСлово: " + get_word_for_print(game.letters, game.good_letters)
    
        puts "Ошибки (#{game.errors}): #{game.bad_letters.join(", ")}"    
                                                             
    
        if game.errors >= 7
            puts "Вы проиграли :("
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
    
end