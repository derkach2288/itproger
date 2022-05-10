current_path = "./" + File.dirname(__FILE__)

require current_path + "/game.rb"
require current_path + "/result_print.rb"
require current_path + "/word_reader.rb"




printer = ResultPrinter.new

puts "Игра виселица, версия 2"

reader = WordReader.new  # Создаем экземпляр класса Word который мы будет использовать для
                         # вывода информации на экран.

slovo = reader.read_from_file(current_path + "/data/words.txt") # Соберем путь к файлу со словами из пути к файлу, где лежит программа и
                                                                # относительно пути к файлу words.txt.

game = Game.new(slovo)


while game.status == 0 

    printer.print_status(game)

    game.ask_next_letter

end


printer.print_status(game)