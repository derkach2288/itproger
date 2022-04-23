secret = "Blue"
guess = ""

while guess != secret # whille - цикл, выполняется до тех пор, пока не выполнится условие
    puts ("Введите слово")
    guess = gets.chomp()

end
puts "Вы выиграли"