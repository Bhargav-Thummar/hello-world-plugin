Gem::Specification.new do |spec|
  spec.name        = 'hello_world'
  spec.version     = '1.0.0'
  spec.summary     = "Hello World!"
  spec.executables << 'hello_world.rb'  # file inside of bin directory
  spec.description = "A simple hello world gem."
  spec.authors     = ["Bhargav-Thummar"]
  spec.email       = ["bhargav.thummar810@gmail.com"]
  # spec.files       = ["lib/hello_world.rb", "lib/hello_world/translator.rb"]
  spec.homepage    = 'https://rubygems.org/gems/hello_world'
  spec.license     = 'MIT'
  
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{lib, bin, test}/**/*"]
  end
end
