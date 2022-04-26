time1 = Time.new
if time1.wday == 0 or time1.wday == 6 # день недели 0 соответствует воскресенью, а 6 - субботе
    puts "выходной"
else 
    puts "будний"
end