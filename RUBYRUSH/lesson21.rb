# Инвертирование массива циклом
# Напишите программу, которая перевернет порядок элементов любого исходного массива. Переверните массив сами с помощью цикла.
# Не используя встроенные методы reverse или reverse!


array = [1, 2, 3, 4, 5, 6, 7]

puts array.to_s

# array.reverse!
# puts array.to_s

reverse_array = []

for item in array do
    reverse_array.unshift(item)
end

puts reverse_array.to_s