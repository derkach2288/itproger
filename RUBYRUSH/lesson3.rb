# Заводим две переменные с числами (одно целое, другое с плавающей точкой)
a = 128
b = 71

# Выводим числа на экран
puts a
puts b

# Если первое число (a) больше второго (b), выводим a
if a > b
  puts 'Наибольшее число: ' + a.to_s
elsif a < b
    puts 'Наибольшее число: ' + b.to_s
else a == b
    puts 'Оба числа равны'
    
end

c = ( a + b)/2
puts "среднее арифметическое = " + c.to_s

if a % 2 == 0
  puts "четное число"
else
  puts "Нечетное число"
end