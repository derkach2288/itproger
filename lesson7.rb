def sayHello(word, num)
puts 'Привет мир!'
puts ("Ваше слово: " + word + " и ваше число: " + num.to_s + ":0")
end

sayHello("ЧорнобаЇвка", 16)

def sum(x, y)
puts(x+y)
end

sum(54, 4)



def sum(x, y)
    return x + y
end

res = sum(54, 4)
puts res



def sum(x, y)
    return x + y, 70 # return - возвращает что либо из метода и выходит из фенкции
end

res = sum(54, 4)
puts res[1] # return можно вызывать, как массив