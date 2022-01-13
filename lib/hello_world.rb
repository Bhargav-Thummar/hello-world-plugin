require 'hello_world/translator.rb'

class HelloWorld
  def self.hey(language = "english")
    translator = Translator.new(language)
    translator.hey
  end
end