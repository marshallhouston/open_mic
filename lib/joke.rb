class Joke
attr_reader :joke_information

  def initialize(joke_information)
    @joke_information = joke_information
  end

  def id
    id_info = @joke_information.find do |info|
      info[0] == :id
    end
    id_info[1]
  end

  def question
    question_info = @joke_information.find do |info|
      info[0] == :question
    end
    question_info[1]
  end

  def answer
    answer_info = @joke_information.find do |info|
      info[0] == :answer
    end
    answer_info[1]
  end

end
