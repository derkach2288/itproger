# Пример 1
for el in 0..5
   puts el 
end

# Пример 2

x = 1
y = 6
for el in x..y
    puts el 
 end
 
# Пример 3

 names = ["Bob", "Kevin", "Alex", "George"]

 for n in names # работает только в условии for end, если прописать puts names - не добавит "!", не меняет массив
    n += "!"
    puts n
 end

# Пример 3-а

 for el in 0..names.length() - 1 # меняет массив names
    names [el] += "!"

 end

 puts names