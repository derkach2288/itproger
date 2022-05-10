# Д/З Викторина
#Создайте два файла: один с вопросами (по одному вопросу на одну строчку файла), другой с ответами на эти вопросы 
# (также на каждой строчке один ответ).


questions = File.new("questions.txt")

answers = File.new("answers.txt")

question = questions.readlines
questions.close

answer = answers.readlines
answers.close

item_question = 0


while item_question < question.size do
    puts question[item_question]
    user_answer = gets.chomp
        if user_answer == answer[item_question].chomp
            puts "Вы ответили правильно"
        else
            puts "Неверно. Прввильный ответ #{answer[item_question]}"
        end
        item_question += 1
end

