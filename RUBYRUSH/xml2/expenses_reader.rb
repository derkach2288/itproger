require "rexml/document"   # Подключаем парсер rexml
require "date"             # Подключаем date для эффективного использования дат


file_name = File.dirname(__FILE__) + "/my_expenses.xml"   # Запишем путь к файлу, который лежит в том же каталоге, что и программа  


unless File.exist?(file_name)         # Если файл не найдет, завершаем программу
    abort "Извиняемся, хозяин, файлик #{file_name} не найден."
end

file = File.new(file_name)   # Открываем файл и записываем дескриптор в переменную file

doc = REXML::Document.new(file)   # Считываем содержимое файла с помощью библиотеки rexml. Создаем новый объект
                                  # класса REXML::Document, построенный из открытого XML файла.

file.close

                        # Создадим пустой ассоциативный массив amount_by_day, куда сложим все траты по
                        # дням в формате:
                        # {
                        #   день1: сумма трат в день1,
                        #   день2: сумма трат в день2,
                        #   ...
                        # }
amount_by_day = {}    # {} можно записать Hash.new # 

                        # Выбираем из элементов документа все тэги <expense> внутри тега <expenses> и в
                        # цикле проходимся по ним.
doc.elements.each('expenses/expense') do |item| # Обратите внимание, эта локальная переменная item объявленая в теле цикла,
                                                # для каждой итерации создается новая такая. За пределами цикла она не видна.

    loss_sum = item.attributes['amount'].to_i # В локальную переменную loss_sum запишем, сколько потратили
    loss_date = Date.parse(item.attributes['date']) # В локальную переменную loss_date запишем дату траты: Date.parse создает из
                                                    # строки объект класса Date.

    amount_by_day[loss_date] ||= 0  # Иницилизируем нулем значение хэша, соответствующее нужному дню если этой даты еще не было
                                    # amount_by_day[loss_date] = 0 if amount_by_day[loss_date] == nil

                                    
  amount_by_day[loss_date] += loss_sum   # Наконец, учеличиваем в хэше нужное значение на сумму траты

end


sum_by_month = {}   # Сделаем хэш, в который соберем сумму расходов за каждый месяц


current_month = amount_by_day.keys.sort[0].strftime('%B %Y') # Пришло время выводить статистику на экран в цикле пройдемся по всем месяцам и
                                                             # начнем с первого

                                            # В цикле по всем датам хэша amount_by_day накопим в хэше sum_by_month значения
                                            # потраченных сумм каждого дня
amount_by_day.keys.sort.each do |key|
                                            
    sum_by_month[key.strftime('%B %Y')] ||= 0   # key.strftime('%B %Y') вернет одинаковую строку для всех дней одного месяца
                                                # поэтому можем использовать ее как уникальный для каждого месяца ключ
  
    
    sum_by_month[key.strftime('%B %Y')] += amount_by_day[key]  # Приплюсовываем к тому что было сумму следующего дня
  end                                                            

# Выводим заголовок для первого месяца
puts "------[ #{current_month}, всего потрачено: #{sum_by_month[current_month]} грн. ]--------"



amount_by_day.keys.sort.each do |key|   # Цикл по всем дням
    
    if key.strftime('%B %Y') != current_month   # Если текущий день принадлежит уже другому месяцу...
  
      
      current_month = key.strftime('%B %Y')   # То значит мы перешли на новый месяц и теперь он станет текущим
  
     # Выводим заголовок для нового текущего месяца
      puts "------[ #{current_month}, всего потрачено: #{sum_by_month[current_month]} грн. ]--------"
    end
  
   
    puts "\t#{key.day}: #{amount_by_day[key]} грн."    # Выводим расходы за конкретный день
  end
  
