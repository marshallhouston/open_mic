class Joke
attr_reader :joke_information

  def initialize(joke_information)
    @joke_information = joke_information
  end

  def id
    id_info = @joke_information.find do |info|
      info[1] == 1
    end
    id_info[1]
  end

  def question
    question_info = @joke_information.find do |info|
      info[1] == "Why did the strawberry cross the road?"
    end
    question_info[1]
  end

  def answer
    answer_info = @joke_information.find do |info|
      info[1] == "Because his mother was in a jam."
    end
    answer_info[1]
  end

end
