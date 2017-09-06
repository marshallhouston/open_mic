require './lib/joke'

class User
  attr_reader :name, :jokes

  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn(joke)
    @jokes << joke
  end

  def tell(joke_receiver, joke)
    joke_receiver.jokes << joke
  end

  def perform_routine_for(joke_listener)
    @jokes.map do |joke|
      joke_listener.jokes << joke
    end
  end

end
