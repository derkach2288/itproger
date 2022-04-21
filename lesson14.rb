
names = ["Bob", "Kevin", "Alex", "George"]

6.times do |x| # 6.times - 6 раз, автоматом начинается с нуля  # |x| - проосто переменная
    puts x
end



# заместь .times можно прописать 

names.each do |x| # .each - присваивает каждому элементу массива переменную "x"
    puts x += "Cool" 
end