

def circle_square(radius)
    return (3.14 * (radius**2))
end

puts "Введите радиус первого круга "
rad = gets.chomp.to_f

puts "Площадь круга " + circle_square(rad).to_s


puts "Введите радиус второго круга "
rad = gets.chomp.to_f

puts "Площадь круга " + circle_square(rad).to_s