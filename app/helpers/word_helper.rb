module WordHelper
  def inclination(number, answer1, answer2, answer3)
    return "#{number} #{answer3}" if (number % 100).between?(11, 14)
    ostatok = number % 10
    return "#{number} #{answer1}" if ostatok == 1
    return "#{number} #{answer2}" if ostatok.between?(2, 4)
    return "#{number} #{answer3}" if ostatok.between?(5, 9) || ostatok.zero?
  end
end
