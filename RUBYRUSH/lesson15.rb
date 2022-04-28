puts "Что вы вибираете?
0. Камень
1. Ножницы
2. Бумага"

user = gets.chomp.to_i

if user > 2
    abort "Нужно ввести значение 0, 1 или 2. Попробуйте еще раз"
end

a = ["Камень", "Ножницы", "Бумага"]

comp = rand(3)

puts "Вы выбрали: " + a[user]
puts "Компьютер выбрал: " + a[comp]

if user == comp
    puts "Ничья"
elsif user == 0 and comp == 1
    puts "победили вы"
elsif user == 1 and comp == 2
    puts "победили вы"
elsif user == 2 and comp == 0
    puts "победили вы"
else 
    puts "победил комаьютер"
end