def sklonenie(number, krokodil, krokodila, krokodilov)

    if (number == nil || !number.is_a?(Numeric))    # если number равняется нулю или неравняется любому числу
        number = 0
    end

    if number >= 11 && number <= 14
        return krokodilov
    end

    ostatok = number % 10
    
    if (ostatok == 1)
        return krokodil
    end

    if (ostatok >= 2 && ostatok <=4)
        return krokodila
    end

    if (ostatok >4 || ostatok == 0)
        return krokodilov
    end
end

skolko = gets.to_i

puts "#{skolko} " + 
    sklonenie(skolko, "негритенок", "негритенка", "негритят") + " " + 
    sklonenie(skolko, "пошел", "пошли", "пошли") + " " + 
    "купаться в море"