def first_elements(array, number)

    result_array = []
    counter = 0

    while result_array.length < number

        result_array << array[counter]
        counter += 1
    end
return result_array
end

array_1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

puts "Вот какая колбаса у вас есть:" + array_1.to_s
puts "Сколько первых элементов вам отрезать?"

number = gets.to_i

puts "Вот ваша колбаса:" + first_elements(array_1, number).to_s