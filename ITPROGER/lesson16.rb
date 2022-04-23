x = File.open("text/milpro.txt")
puts x.readline()

x.close()  # .close() - закрывает файл


File.open("text/milpro.txt", "a") do |x| # "a" (append)- режим записи в конец файла
    x.write(".КРУТО!")
    x.write("\nКруто!")
end

File.open("text/index.html", "w") do |x| #  "w" (write) - полностью перезаписывает файл, удаляя содержимое, если файла нет - создает
    x.write("<h4>Привет</h4>")
end