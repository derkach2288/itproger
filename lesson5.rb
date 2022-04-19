arr = Array[4, 6, 10, 5.67]
puts (arr)

names = Array['George', 'Bob', 'Alex'] #отсчет начинается с нуля
names[0] = 'Diana'
puts (names[0, 2])

list = Array.new
list[0] = 29
list[7] = 90
puts (list)
puts (list.length()) # .length() - считает количество символов
puts names.reverse()  # .reverse() - переворачивает 
puts list.include? 29 # .include? - поиск по массиву - результат true or false