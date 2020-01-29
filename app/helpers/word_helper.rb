module WordHelper
  def type_question
    @number = @questions.count
    "вопросов" if (@number % 100).between?(11, 14)
    ostatok = @number % 10
    return "вопрос" if ostatok == 1
    return "вопроса" if ostatok.between?(2, 4)
    return "вопросов" if ostatok.between?(5, 9) || ostatok.zero?
  end
end