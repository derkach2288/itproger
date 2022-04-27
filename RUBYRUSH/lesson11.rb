fruits = ["apple", "orange", "banana"]
puts fruits.to_s


basket = []
basket << "Apple"               # << добавляет элемент в массив
basket.push("Mellon")           # .push добавляет элемент в массив, через запятую можно добавиь несколько элементов
basket.push("Cherry", "Mango")
puts basket.to_s
puts basket[0]

basket.delete("Mellon")         # .delete удаляет элемент массива
puts basket.to_s

basket.delete_at(0)             # .delete_at удаляет элемент массива по номеру элемента
puts basket.to_s