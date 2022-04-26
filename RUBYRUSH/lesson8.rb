puts "Какой сегодня курс гривны ?"
curse = gets.to_f

puts "сколько у вас долларов?"
nal = gets.to_f

usd = curse*nal

puts " Итого = " + usd.to_s + "гривен"