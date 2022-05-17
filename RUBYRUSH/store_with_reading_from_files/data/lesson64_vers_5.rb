# Д/З Магазин с чтением из файлов

require_relative 'product'
require_relative 'book'
require_relative 'movie'

current_path = File.dirname(__FILE__)
film = Movie.from_file(current_path + '/films/01.txt')
book = Book.from_file(current_path + '/books/01.txt')


puts film

puts book



# Пытаемся вызвать метод from_file у класса Product и ловим ошибку
begin
  Product.from_file(current_path + '/data/films/01.txt')
rescue NotImplementedError
  puts 'Метод класса Product.from_file не реализован'
end
