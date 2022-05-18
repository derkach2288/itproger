# Д/З Магазин с ProductCollection

require_relative 'product'
require_relative 'book'
require_relative 'movie'
require_relative 'product_collection'

# Создаем коллекцию продуктов, передавая методу класса from_dir путь к папке
# с подпапками films и books. ProductCollection сам знает, как там внутри лежат
# эти файлы и сам разбереться, как их оттуда считать.
collection = ProductCollection.from_dir(File.dirname(__FILE__))

# Сортируем продукты по возрастанию цены с помощью метода sort! экземпляра
# класса ProductCollection
collection.sort!(by: :price, order: :asc)

# Получаем массив продуктов методом to_a и выводим каждый на экран, передавая
# его методу puts в качестве аргумента.
collection.to_a.each do |product|
  puts product
end