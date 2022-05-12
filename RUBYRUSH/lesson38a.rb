require 'translit'

puts "Введите фразу для транслитерации:"

puts Translit.convert(gets.chomp)