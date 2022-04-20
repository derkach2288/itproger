def getDayWeek(day)
    nameOfDay =

        if day == "1"
            nameOfDay = "Понедельник"
        elsif day == "2"
            nameOfDay = "Вторник"
        elsif day == "3"
            nameOfDay = "Среда"
        elsif day == "4"
            nameOfDay = "Четверг"
        elsif day == "5"
            nameOfDay = "Пятница"
        elsif day == "6"
            nameOfDay = "Суббота"
        elsif day == "7"
            nameOfDay = "Воскресенье"
        end

    return nameOfDay
end

puts ("Сегодня" + " " + getDayWeek("4"))




def getDayWeek(day)
    nameOfDay =

        case day
            when "1"
            nameOfDay = "Понедельник"
            when "2"
            nameOfDay = "Вторник"
            when "3"
            nameOfDay = "Среда"
            when "4"
            nameOfDay = "Четверг"
            when "5"
            nameOfDay = "Пятница"
            when "6"
            nameOfDay = "Суббота"
            when "7"
            nameOfDay = "Воскресенье"
            else nameOfDay = "Неверное значение"
        end

    return nameOfDay
end

puts ("Ваш день" + " " + getDayWeek("5"))