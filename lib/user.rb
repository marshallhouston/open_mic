require './lib/joke'

class User
  attr_reader :name, :jokes

  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn(joke)
    joke = @joke_information
    @jokes << joke
  end

end
