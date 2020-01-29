module WordHelper
  def type_question(number)
    "#{number}вопросов" if (number % 100).between?(11, 14)
    ostatok = number % 10
    return "#{number}вопрос" if ostatok == 1
    return "#{number} вопроса" if ostatok.between?(2, 4)
    return "#{number} вопросов" if ostatok.between?(5, 9) || ostatok.zero?
  end
end