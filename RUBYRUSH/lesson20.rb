array = []

puts "Введите число элиментов масива:"

leng = gets.to_i



while array.length != leng do
    el = rand(101)
    array << el
end


puts array.to_s

max_num = 0

for item in array do
    if item > max_num
    max_num = item
    end
end

puts "Самое большое число: " + max_num.to_s