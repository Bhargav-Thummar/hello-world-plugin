class Translator
  def initialize(language)
    @language = language
  end

  def hey
    case @language
    when "spanish"
      "hola mundo!"
    else
      "hello world!"
    end
  end
end