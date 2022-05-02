
def nume_y(x, y)

    if y == x
        abort "Поздравляем, вы выиграли"
    elsif 
        (y+1) == x or (y+2) == x
        puts "тепло, нужно больше"
    elsif
        (y-1) == x or (y-2) == x
     puts "тепло, нужно меньше"
    else
        puts "холодно"
    end
   
end

x = rand(16)
puts "Загадано число от 0 до 15, включительно, отгадайте c 3х попыток"

counter = 0

while counter < 3 do
y = gets.to_i
nume_y(x, y)
counter += 1
end

puts "Вы проиграли. Загаданное число " + x.to_s