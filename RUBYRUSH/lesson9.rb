x = rand(16)

puts "Загадано число от 0 до 15, включительно, отгадайте c 3х попыток"
y = gets.chomp.to_i

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

y = gets.chomp.to_i
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

 y = gets.chomp.to_i
    if y == x
        abort "Поздравляем, вы выиграли"
    else
        puts "Вы проиграли. Загаданное число " + x.to_s
    end