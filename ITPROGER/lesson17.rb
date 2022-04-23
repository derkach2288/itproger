list = [6, 8, 9, 23, 78, 12]


begin                      # проверяем на ошибку. Если есть ошибка - выводим информацию, но работа программы продолжается 
    puts list["dog"]
    num = 10/0
rescue TypeError
    puts "TypeError"
rescue
    puts "Деление на ноль"
end
puts "Привет"