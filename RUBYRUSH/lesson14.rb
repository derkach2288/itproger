auto = ["BMW", "Audi", "Toyota", "Ford", "Seat", "Fiat", "Reno"]
puts "У нас всего " + auto.length.to_s + " машин. Вам какую?"        # .length.to_s можна заменить на .size_to_s

a = gets.to_i

if a < 7 
    puts "Марка авто " + auto[a]
else 
    puts "Извините, машины с таким номером нет"
end