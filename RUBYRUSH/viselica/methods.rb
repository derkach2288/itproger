def get_letters

    slovo = ARGV[0]   # Берем загаданное слово из командной строки

    if (slovo == nil || slovo == "")      # Если при запуске программы не указали слово для отгадывания, мы не можем родолжать игру
        abort "Вы не ввели слово для игры"
    end

    return slovo.split("")  # .split метод, который разобьет слово на массив из букв

end


def get_user_input
    letter = ""

    while letter == "" do
        letter = STDIN.gets.chomp
    end
    return letters
end