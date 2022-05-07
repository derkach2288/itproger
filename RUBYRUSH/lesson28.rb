# Д/З Напишите с помощью case программу, которая отвечает на вопрос, кто был главным врагом указанного героя.


def hero_enemy(hero)

    

    case hero
        when "бэтмен", "batman"
            enemy = "джокер"
        when "шерлок"
            enemy = "мориарти"
        else
             abort "Мы не знаем такого героя"
    end

    return enemy

end

puts "Врага какого персонажа вы хотите узнать?"
hero = STDIN.gets.chomp.downcase

puts "Врагом #{hero} является #{hero_enemy(hero)}"