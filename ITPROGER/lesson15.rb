File.open("text/milpro.txt", "r") do |x| # присваивает файлу переменну, например, х. Далее можем обращаться к файлу через переменную "r" (readmy)- режим чтения
    puts x.read().include? "кг" # .read() - команда прочитать файл, далее можем дать команду, к примеру, .include? и что-то найти
end

File.open("text/milpro.txt") do |x| 
    puts x.readline() # .readline() - читает строку. При каждой последующе команде .readline() - читает следующую строку
    puts x.readline()
    puts x.readline()
end

File.open("text/milpro.txt") do |x| 
    puts x.readchar() # .readchar() - выводит один символ. 
    puts x.readchar()
    puts x.readchar()
end



File.open("text/milpro.txt") do |x| 
        for y in x.readlines()   # .readlines() -Массив из всех строк
            puts y # построчно прочитываем весь вайл
        end
end

