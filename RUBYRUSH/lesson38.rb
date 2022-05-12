# Д/з Транслитератор
# Напишите программу-транслитератор: программу, которая берёт русский текст и переводит его в созвучный английский. 
# А если пользователь ввел фразу на английском, программа должна транслитерирорвать на русский.

require 'cyrillizer'

puts "Введите фразу для транслитерации:"

string = gets.chomp

puts gets.to_cyr    # => 'кирилица'

string_lat = string.to_lat

if string == string_lat
    puts string.to_cyr
else
    puts string.to_lat
end