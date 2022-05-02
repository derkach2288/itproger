
def leng_s(num)

counter = ""

    while counter.size < num
        counter += "*"
    end
return counter

end

puts "Сколько звезд вывести?"

num = gets.to_i

puts "Вот ваши звезды: " + leng_s(num).to_s