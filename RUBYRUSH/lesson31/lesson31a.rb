file_path = "data/qoutes.txt"    # чтоб каждый раз не повторять путь к файлу - можно записать его в переменную

if File.exist?(file_path)
    f = File.new(file_path, "r:UTF-8")
    lines = f.readlines        # .readlines разбивает текст файла на массив из строк (строка - элемент массива)
    puts lines
    f.close         # закрывает файл
else
    puts "файл не найден"
end