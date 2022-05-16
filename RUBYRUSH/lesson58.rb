# Этот код необходим только при использовании русских букв на Windows
if Gem.win_platform?
    Encoding.default_external = Encoding.find(Encoding.locale_charmap)
    Encoding.default_internal = __ENCODING__
  
    [STDIN, STDOUT].each do |io|
      io.set_encoding(Encoding.default_external, Encoding.default_internal)
    end
  end


  
  puts 'Врага какого персонажа вы хотите узнать?'
  hero = STDIN.gets.encode('UTF-8').chomp

  heros_antiheros = {
    'Бэтмен' => 'Джокер!',
    'Шерлок Холмс' => 'Профессор Мориарти',
    'Буратино' => 'Карабас-Барабас',
    'Фродо Бэггинс' => 'Саурон',
    'Моцарт' => 'Сальери'
  }
  
heros_antiheros['моцарт'] = 'Сальери' # добавить элемент в ассоциативный массив
heros_antiheros.delete('моцарт')   # удалить элемент из ассоциативного массива
 
  if heros_antiheros.has_key?(hero)
    puts "Враг этого героя: #{heros_antiheros[hero]}"
  else
    puts 'Не удалось найти врага'
  end

  puts heros_antiheros.keys  # вывести все ключи