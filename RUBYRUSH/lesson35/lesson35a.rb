# Фильм на вечер с описанием
# Дополните предыдущую программу описанием к фильму. В файле со списком фильмов следующей строкой после название идет краткое описание. 
# То есть каждая вторая строка файла содержит описание к фильму на предыдущей строке.

# А при вызове программы, выводите произвольный фильм с описанием:

current_path = File.dirname(__FILE__)

file_path = current_path + "/data/movies.txt"

if File.exist?(file_path)
    f = File.new(file_path, "r:UTF-8")
    films = f.readlines        
    f.close
    number = rand(films.length)
        if number % 2 == 1    # если нечетное число
            number -= 1
        end
    puts " Сегодня рекомендую посмотреть: #{films[number]}"
    puts films[number + 1]

else
    puts "файл не найден"
end