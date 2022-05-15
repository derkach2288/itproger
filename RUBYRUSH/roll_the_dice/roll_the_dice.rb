def show_rolling_die
    10.times do
        print "#{rand(1..6)}\r"
        sleep 0.1
    end
end

puts "Сколько кубиков кинуть?"

number = gets.to_i

number.times do 
show_rolling_die
puts rand(1..6)
end