require_relative "bridge.rb"

puts "Поехали!"



puts "Внезапно река!"



bridge = Bridge.new  # Специальный метод .new — создает объект выбранного класса. В переменной bridge будет объект класса Bridge.
                     # когда есть метод .new - метод initialize вызывается автоматически

if !bridge.is_opened? # если мост не открыт - используем знак ! (не)
    bridge.open
end


    puts "поехали дальше"

    puts bridge.is_opened?.to_s