# Генератор рожиц
# Напишите программу–генератор рожиц с использованием псевдографики: программа должна генерить лицо из 
# произвольно выбранных фрагментов: лба, глаз, носа и рта.
# Эти фрагмены придумайте сами с помощью символов в виде строчек.
# Например, из такого лба / --- \, таких глаз | O o |, носа \ v / и рта \ - /, получится рожица:


forehead = File.new("forehead.txt")

eyes = File.new("eyes.txt")

nose = File.new("nose.txt")

mouth = File.new("mouth.txt")

puts forehead.readlines.sample
forehead.close

puts eyes.readlines.sample
eyes.close

puts nose.readlines.sample
nose.close

puts mouth.readlines.sample
mouth.close