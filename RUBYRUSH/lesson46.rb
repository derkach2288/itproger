# Проверяем email
# Напишите программу, которая проверяет является ли введенный текст email-ом.


puts "Введите email:"

user_email = gets.downcase.chomp

if user_email =~ /^[a-z0-9]+@[a-z0-9]+\.[a-z]+/
    puts "Спасибо!"
else
    puts "Какая-то фигня!"
    puts "Это не email"
end