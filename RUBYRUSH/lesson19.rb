# Д/з Написать программу, которая выводит массив чисел от 1 до N. И выводит сумму всех чисел этого массива. 
# Число N спрашивается у пользователя из консоли.

array = []

puts "Введите N"

number = gets.to_i
x = 1
sum = 0

while x <= number do
    array << x
    sum += x
    x +=1
    
end

puts array.to_s
puts "сумма чисел: " + sum.to_s