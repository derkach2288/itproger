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
day = gets.chomp()
puts getDayWeek(day)