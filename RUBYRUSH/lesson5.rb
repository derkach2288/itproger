
if rand(0..1) == 0 # rand выбирает случайное число
    puts "Орел"
    else
    puts "решка"
end


# второй вариант написания программы монетка
x = [0, 1]

if x.sample == 0
    puts "Орел"
    else
    puts "решка"
end

# Добавлено ребро, выпадает с вероятностью 1 к 10
if rand(11) == 10
    puts "Ребро"
    elsif rand(0..1) == 0 
    puts "Орел"
    else
    puts "решка"
end