# Д/З Объединение хэшей
# Вы приехали к бабушке на дачу и пошли за покупками.

# Написали два хэша (товар: количество): один для покупок в продуктовом, другой — в хозяйственном. 
# А вышло так, что всё равно в районном сельпо всё продаётся вместе.

# Напишите программку, которая объединяет ваши списки в один и выводит его на экран.

list1 = {
    bread: 2,
    butter: 3,
    salt: 5,
    sugar: 4
}

list2 = {
    biscuit: 2,
    coffee: 6,
    candies: 7,
    chocolate: 2,
    sugar: 5
}

all = list1.merge(list2)
puts all

all = list1.merge(list2){ |key, x1, x2| x1+x2 }
puts all