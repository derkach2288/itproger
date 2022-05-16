# Билет пассажира
# Напишите программу, которая выводит билет пассажира поезда.

# Используйте своё воображение и ассоциативные массивы.

passenger = {
    ticket_number: 'РМ2010398 050298',
    first_name: 'Венедикт',
    second_name: 'Васильевич',
    last_name: 'Ерофеев',
    passport_number: 'АЛ 505281',
    departure_city: 'Калуш',
    destination_city: 'Харьков'
  }

  puts "Билет № #{passenger[:ticket_number]}"
  puts "Маршрут: #{passenger[:departure_city]} — #{passenger[:destination_city]}"
  puts "Пассажир: #{passenger[:first_name]} #{passenger[:second_name][0]}. " \
"#{passenger[:last_name]}"
  puts "Паспорт: #{passenger[:passport_number]}"