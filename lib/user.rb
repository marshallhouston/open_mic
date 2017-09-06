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

  def learn_routine(file_path)
    split_lines = split_file_lines(file_path)
    #take the array of split lines and assign it to the
  end

  def split_file_lines(file_path)
    CSV.foreach(file_path) do |row|
      row.split(',')
    end
  end

  def assign_info_in_csv_to_joke_info
  end

end
