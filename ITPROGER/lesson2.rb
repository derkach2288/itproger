words = "веб сайт it"
word = "!"
puts (words.upcase() + word) # .upcase() - переводит текст в верхний регистр .downcase - в нижний регистр

some_text = '     Много пробелов     '
puts (some_text.strip())         # .strip() - удаляет пробелы

some_text = 'Много пробелов'
puts (some_text.length())  # .length() считает количество символов

website = "itProger"
puts (website.include? "it")  # .include? - поиск, результат true/false