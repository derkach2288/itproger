x = File.open("text/milpro.txt")
puts x.readline()

x.close()  # .close() - закрывает файл


File.open("text/milpro.txt", "a") do |x| # "a" (append)- режим записи в конец файла
    x.write(".КРУТО!")
    x.write("\nКруто!")
end

