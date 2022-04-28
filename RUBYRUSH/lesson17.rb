eggs = [0, 0, 0, 0, 1, 1, 0, 0, 1, 23, 0, 2, 0, 25, 0, 0, 1, 0]       # лоток с яйцами, где 0 - хорошие яйца

goot_eggs = []         # goot_eggs = Array.new
broken_count = 0       # счетчик плохих яиц

for item in eggs do    # item - просто временная переменная, которая берет каждый элемент цикла eggs
    if(item != 0)
        broken_count +=1
    else 
        goot_eggs << item
    end
end

puts eggs.to_s
puts goot_eggs.to_s
puts broken_count.to_s