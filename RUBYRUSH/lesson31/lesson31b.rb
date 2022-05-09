current_path = File.dirname(__FILE__)    # файл ищется в текущей папки вайла руби. Чтоб открывать файл с любого места - используем
                                         # File.dirname(__FILE__) - путь к папке программы

file_path = current_path + "/data/qoutes.txt"

if File.exist?(file_path)
    f = File.new(file_path, "r:UTF-8")
    lines = f.readlines        # .readlines разбивает текст файла на массив из строк (строка - элемент массива)
    f.close
    puts lines.sample

else
    puts "файл не найден"
end