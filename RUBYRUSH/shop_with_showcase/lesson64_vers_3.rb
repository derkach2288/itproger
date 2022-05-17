# Д/З Магазин с витриной и конструкторами

require_relative 'product'
require_relative 'book'
require_relative 'movie'


products = []

king = Book.new(price: 400, amount: "5 шт", genre: "Фэнтези", title: "Король", author: "Mudlan")

idiot = Book.new(
    title: 'Идиот',
    genre: 'роман',
    author: 'Федор Достоевский',
    price: 1500,
    amount: 10
  )


leon = Movie.new(title: 'Леон', year: '1994', director: 'Люк Бессон', price: 990, amount: 5)

durak = Movie.new(title: 'Дурак', year: '2014', director: 'Юрий Быков', price: 390, amount: 1)

products << [king, idiot, leon, durak]

leon.amount = 4

puts products








