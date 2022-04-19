x = 8
y = 8

if x < y
    puts("x меньше Y")
elsif x == y
    puts("x равно y")
else x > y
    puts("x больше y")
end

isSmall = true
if isSmall             # if isSmall == true
    puts("OK")
end

isSmall = false
if !isSmall            # if isSmall != true - если isSmall неравен true
    puts("Не OK")
end

isSmall = true
if isSmall and x == 8            # if isSmall = true и х = 8 можно прописать or - или
    puts("OK1")
end