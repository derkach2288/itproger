a = [1, 2, 3, 4, 5]
puts a.to_s
puts a.reverse.to_s             # .reverse переворачивает масив, не сохраняя изменения

puts a.to_s
puts a.reverse!.to_s            # .reverse! переворачивает массив, сохраняя изменения
puts a.to_s