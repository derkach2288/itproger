# Д/З Магазин с витриной и конструкторами

require_relative 'product'
require_relative 'book'
require_relative 'movie'


products = []

products << Book.new(price: 400, amount: "5 шт", genre: "Фэнтези", title: "Король", author: "Mudlan")

products << Book.new(
    title: 'Идиот',
    genre: 'роман',
    author: 'Федор Достоевский',
    price: 1500,
    amount: 10
  )


products << Movie.new(title: 'Леон', year: '1994', director: 'Люк Бессон', price: 990, amount: 5)

products << Movie.new(title: 'Дурак', year: '2014', director: 'Юрий Быков', price: 390, amount: 1)



puts 'Вот какие товары у нас есть:'
puts products