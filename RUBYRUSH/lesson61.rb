# Много билетов пассажиров
# А теперь составьте массив хэшей с несколькими пассажирами в вагоне.

# Индекс хэша в массиве — место пассажира в вагоне.

# Затем выведите все билеты на экран.


passengers = [
{
    ticket_number: 'РМ2010398 050295',
    first_name: 'Венедикт',
    second_name: 'Васильевич',
    last_name: 'Петренко',
    passport_number: 'АЛ 505281',
    departure_city: 'Калуш',
    destination_city: 'Харьков'
  },

  {
    ticket_number: 'РМ2010398 050296',
    first_name: 'Василий',
    second_name: 'Иванович',
    last_name: 'Власенко',
    passport_number: 'НА 526575',
    departure_city: 'Калуш',
    destination_city: 'Харьков'
  },

  {
    ticket_number: 'РМ2010398 050297',
    first_name: 'Андрей',
    second_name: 'Петрович',
    last_name: 'Котенко',
    passport_number: 'АК 574125',
    departure_city: 'Калуш',
    destination_city: 'Харьков'
  }
]

passengers.each_with_index do |passenger, index|

    puts " * * * Место № #{index +1} * * * "

    puts "Билет № #{passenger[:ticket_number]}"
    puts "Маршрут: #{passenger[:departure_city]} — #{passenger[:destination_city]}"
    puts "Пассажир: #{passenger[:first_name]} #{passenger[:second_name][0]}. " \
    "#{passenger[:last_name]}"
    puts "Паспорт: #{passenger[:passport_number]}"

end