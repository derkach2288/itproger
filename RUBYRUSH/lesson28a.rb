puts "Врага какого персонажа вы хотите узнать?"
hero = STDIN.gets.chomp.downcase

case hero
when "бэтмен", "batman"
    enemy = "джокер"
when "шерлок"
    enemy = "мориарти"
else
     abort "Мы не знаем такого героя"
end


puts "Врагом #{hero} является #{enemy}"