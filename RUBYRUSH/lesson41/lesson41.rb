# Генератор рожиц
# Сделайте генератор рожиц таким, чтобы он рисовал рожици в файл. Каждый раз в новый, название файла должно состоять 
# из строчки "face", даты и текущего времени.

current_path = File.dirname(__FILE__)

forehead = File.new(current_path + "/forehead.txt")

eyes = File.new(current_path + "/eyes.txt")

nose = File.new(current_path + "/nose.txt")

mouth = File.new(current_path + "/mouth.txt")

f = forehead.readlines
forehead.close

e = eyes.readlines
eyes.close

n = nose.readlines
nose.close

m = mouth.readlines
mouth.close

time = Time.now
filename = "face " + time.strftime("%Y.%m.%d %H-%M-%S") + ".txt"

file = File.new(current_path + "/" + filename, "w:UTF-8")   

file.puts(f.sample)
file.puts(e.sample)
file.puts(n.sample)
file.puts(m.sample)

file.close

