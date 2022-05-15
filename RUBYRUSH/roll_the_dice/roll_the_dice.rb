puts "Сколько кубиков кинуть?"

number = gets.to_i

number.times do 
puts rand(1..6)
end