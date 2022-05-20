require 'json'

# Прочитаем визитку из файла и запишем её в виде ассоциативного массива
file = File.read("#{__dir__}/business_card.json", encoding: 'UTF-8')
card = JSON.parse(file)

# Наконец, выведем визитку в консоль
puts "#{card['first_name']} #{card['second_name'][0]}. #{card['last_name']}"
puts "#{card['phone']}, #{card['email']}"
puts card['skills']