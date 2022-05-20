require "json" # Подключаем библиотеку для работы с форматом JSON

file = File.read(File.dirname(__FILE__) + '/colors.json')   # Читаем содержимое файла colors.json

data_hash = JSON.parse(file)  # Делаем ассоциативный массив из содержимого файла с помощью метода JSON.parse
                              # и записываем его в переменную data_hash.

puts data_hash["red"]   # Выводим hex-код красного цвета на экран, получая значение из ассоциативного
                        # массива по ключу-строке 'red'.

