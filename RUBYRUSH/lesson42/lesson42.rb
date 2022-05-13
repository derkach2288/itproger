# Сделайте так, чтобы программа говорила, что сегодня выходной не только если сегодня суббота или воскресенье, но и 
# если сегодня один из государственных праздников.

current_path = File.dirname(__FILE__)

h = File.new(current_path + "/holidays.txt")

holidays = h.readlines
h.close

for item in holidays
    item.chomp!         # chomp с восклицательным знаком перезаписывает массив с обрезанными последними элементами 
end


time1 = Time.new


if time1.wday == 0 or time1.wday == 6 # день недели 0 соответствует воскресенью, а 6 - субботе
    puts "выходной"
elsif
    holidays.include?(time1.strftime("%d.%m"))
    puts "Сегодня праздник"
else 
    puts "будний"
end
