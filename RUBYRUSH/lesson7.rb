x = Array.new
puts "Введите 3 числа"
x[0] = gets
x[1] = gets
x[2] = gets

y = (x[0].to_i + x[1].to_i + x[2].to_i)/3
puts "среднее арифметическое " + y.to_s