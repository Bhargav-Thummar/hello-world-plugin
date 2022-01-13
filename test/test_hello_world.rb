require 'minitest/autorun'
require 'hello_world'

class HelloWorldTest < Minitest::Test
  def test_english_hello_world
    assert_equal "hello world!",
    HelloWorld.hey("english")
  end

  def test_any_hello_world
    assert_equal "hello world!",
    HelloWorld.hey("ruby")
  end

  def test_spanish_hello_world
    assert_equal "hola mundo!",
    HelloWorld.hey("spanish")
  end
end