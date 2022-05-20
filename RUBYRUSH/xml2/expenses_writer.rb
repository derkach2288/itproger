require "rexml/document"   # Подключаем парсер rexml
require "date"             # Подключаем date для эффективного использования дат


puts 'На что потратили деньги?'  # Спросим у пользователя, на что он потратил деньги и сколько
expense_text = STDIN.gets.chomp

puts 'Сколько потратили?'
expense_amount = STDIN.gets.to_i


puts 'Укажите дату траты в формате ДД.ММ.ГГГГ, например 12.05.2003 (пустое поле - сегодня)' # Спросим у пользователя, когда он потратил деньги
date_input = STDIN.gets.chomp

expense_date = nil

if date_input == ""
    expense_date = Date.today
else
    expense_date = Date.parse(date_input)
end


puts 'В какую категорию занести трату'   # Наконец, спросим категорию траты
expense_category = STDIN.gets.chomp


current_path = File.dirname(__FILE__)           # Сначала получим текущее содержимое файла. И построим из него XML-структуру в
file_name = current_path + '/my_expenses.xml'   # переменной doc.

file = File.new(file_name, 'r:UTF-8')
doc = REXML::Document.new(file)
file.close

                                                # Добавим трату в нашу XML-структуру в переменной doc
                                                # Для этого найдём элемент expenses (корневой)
expenses = doc.elements.find('expenses').first

                                                # И добавим элемент командой add_element. Все аттрибуты пропишем с помощью
                                                # параметра, передаваемого в виде ассоциативного массива.
expense = expenses.add_element 'expense', {
    'amount' => expense_amount,
    'category' => expense_category,
    'date' => expense_date.strftime('%Y.%m.%d') # or Date#to_s
  }

  # А содержимое элемента меняется вызовом метода-сеттера text=
expense.text = expense_text

                                                # Осталось только записать новую XML-структуру в файл методов write. В качестве
                                                # параметра методу передаётся указатель на файл. Красиво отформатируем текст в
                                                # файлике с отступами в два пробела.
file = File.new(file_name, 'w:UTF-8')
doc.write(file, 2)
file.close

puts 'Информация успешно сохранена'