# д/з Напишите программу, которая здороваеся в файл hello.txt (пишет строку "Hello, file!" в него).

current_path = File.dirname(__FILE__)

file = File.new(current_path +  "/hello.txt", "w:UTF-8")

file.print("Hello, file!" )

file.close