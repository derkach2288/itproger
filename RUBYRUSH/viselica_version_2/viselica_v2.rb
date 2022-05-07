# Этот код необходим только при использовании русских букв на Windows
if Gem.win_platform?
    Encoding.default_external = Encoding.find(Encoding.locale_charmap)
    Encoding.default_internal = __ENCODING__
  
    [STDIN, STDOUT].each do |io|
      io.set_encoding(Encoding.default_external, Encoding.default_internal)
    end
end


require_relative "game.rb"
require_relative "result_print.rb"

printer = ResultPrinter.new

puts "Игра виселица, версия 2"

slovo = ARGV[0]

game = Game.new(slovo)


while game.status == 0 

    printer.print_status(game)

    game.ask_next_letter

end


printer.print_status(game)