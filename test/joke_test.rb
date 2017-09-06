require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'

class JokeTest < Minitest::Test

  def test_it_exists
    joke = Joke.new({id: 1, question: "Why did the strawberry cross the road?", answer: "Because his mother was in a jam."})

    assert_instance_of Joke, joke
  end

  def test_it_can_return_its_id
    joke = Joke.new({id: 1, question: "Why did the strawberry cross the road?", answer: "Because his mother was in a jam."})

    assert_equal 1, joke.id
  end

  def test_it_can_return_its_question
    joke = Joke.new({id: 1, question: "Why did the strawberry cross the road?", answer: "Because his mother was in a jam."})

    expected = "Why did the strawberry cross the road?"
    actual = joke.question
    assert_equal expected, actual
  end

  def test_it_can_return_its_answer
    joke = Joke.new({id: 1, question: "Why did the strawberry cross the road?", answer: "Because his mother was in a jam."})

    expected = "Because his mother was in a jam."
    actual = joke.answer
    assert_equal expected, actual
  end
end
