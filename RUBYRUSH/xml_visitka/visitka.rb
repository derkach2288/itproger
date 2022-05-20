# Чтение XML-визитки
# Сделайте свою визитку в формате XML.

# Укажите свои фамилию, имя, отчество, телефон, адрес электронной почты и немного напишите о своих навыках.

# Напишите программу, которая читает эту визитку в формате XML и красиво выводит информацию на экран.

require "rexml/document"

file_name = File.dirname(__FILE__) + "/text.xml"

unless File.exist?(file_name)         # Если файл не найдет, завершаем программу
    abort "Извиняемся, хозяин, файлик #{file_name} не найден."
end

file = File.new(file_name)

doc = REXML::Document.new(file)

file.close
                                                        # Теперь мы можем достать любое поле нашей визитки с помощью методов объекта doc
                                                        # Например, doc.root.elements["first_name"].text
                                                        # Давайте запишем все поля в ассоциативный масси
card = {}
                                                        #  ключами в нашем массиве будут не метки (как обычно), а строки
['first_name', 'second_name', 'last_name', 'phone', 'email', 'skills'].each do |field|   
    card[field] = doc.root.elements[field].text
end

puts "#{card['first_name']} #{card['second_name'][0]}. #{card['last_name']}"
puts "#{card['phone']}, #{card['email']}"
puts "#{card['skills']}"