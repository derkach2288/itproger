if File.exist?("data/qoutes.txt")   # проверка на наличие файле


f = File.new("data/qoutes.txt", "r:UTF-8")  # "data/qoutes.txt" - путь к файлу, "r:UTF-8" - переменная, которая корректно отображает кирилицу

content = f.read    # .read - читать все содержимое файла

puts content

else puts "файл не найден"

end