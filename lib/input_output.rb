class InputOutput
  attr_reader :choice

  def initialize(name)
    @name = name
    if @name == nil
      puts "Приветствуем вас Инкогнито!"
    else
      puts "Приветствуем вас, #{@name}!"
    end

    puts
    puts "Тест поможет определить ваш уровень коммуникабельности."
    puts
    puts "Для этого необходимо правдиво ответить на следующие вопросы."
    puts
  end

  def user_input
    @choice = nil
    until @choice == 1 || @choice == 2 || @choice == 3
      puts
      puts "Введите с помощью цифр один из вариантов ответа:"
      puts
      puts "1 - да"
      puts
      puts "2 - нет"
      puts
      puts "3 - иногда"
      puts
      @choice = STDIN.gets.to_i
      puts
    end
  end

  def print_result(test)
    puts "Инструкции"
    puts
    puts "За каждый ответ «да» начисляется 2 балла, за ответ «нет» — 0 баллов, " \
          "за ответ «иногда» — 1 балл."
    puts
    puts "Результат теста. Количество баллов: #{test.score}"
    puts

    puts test.result
  end

  def output_questions(item)
    puts item
  end
end