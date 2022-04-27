puts "Какая у вас валюта?
    1. Доллары
    2. Гривны"
    
    val = gets.chomp

puts "Какой сегодня курс ?"
    curse = gets.to_f

    if val == "1"
        puts "сколько у вас долларов?"
        nal = gets.to_f
        usd = curse*nal
        puts " Итого = " + usd.to_s + "гривен"
    else val == "2"
        puts "сколько у вас гривен?"
        nal = gets.to_f
        usd = (nal/curse).round(2)
        puts " Итого = " + usd.to_s + "долларов"
    end