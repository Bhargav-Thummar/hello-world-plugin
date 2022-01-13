#!/usr/bin/env ruby

require 'hello_world'

puts HelloWorld.hey(ARGV[0])


# About executable file

# ADDING AN EXECUTABLE
# In addition to providing libraries of Ruby code, gems can also expose one or many executable files to your shell’s PATH. Probably the best known example of this is rake. Another very useful one is prettify_json.rb, included with the JSON gem, which formats JSON in a readable manner (and is included with Ruby 1.9). Here’s an example:

# % curl -s http://jsonip.com/ | \
#   prettify_json.rb
# {
#   "ip": "24.60.248.134"
# }
# Adding an executable to a gem is a simple process. You just need to place the file in your gem’s bin directory, and then add it to the list of executables in the gemspec. Let’s add one for the hello_world gem. First create the file and make it executable:

# % mkdir bin
# % touch bin/hello_world.rb
# % chmod a+x bin/hello_world.rb
# The executable file itself just needs a shebang in order to figure out what program to run it with. Here’s what hello_world’s executable looks like:

# 'chmod a+x <filename>' will basically give all the users i.e. the owner of the file, other users in the file's group and rest others (which are not in the file's group) executable permission to the file. Note that 'a' stands for 'all'.

# % cat bin/hello_world
# #!/usr/bin/env ruby

# require 'hello_world'
# puts hello_world.hi(ARGV[0])
# All it’s doing is loading up the gem, and passing the first command line argument as the language to say hello with. Here’s an example of running it:

# % ruby -Ilib ./bin/hello_world.rb
# hello world

# % ruby -Ilib ./bin/hello_world.rb spanish
# hello_world mundo
# Finally, to get hello_world’s executable included when you push the gem, you’ll need to add it in the gemspec.

# % head -4 hello_world.gemspec
# Gem::Specification.new do |s|
#   s.name        = 'hello_world'
#   s.version     = '1.0.0'
#   s.executables << 'hello_world.rb'
# Push up that new gem, and you’ll have your own command line utility published! You can add more executables as well in the bin directory if you need to, there’s an executables array field on the gemspec.

# Note that you should change the gem’s version when pushing up a new release. For more information on gem versioning, see the Patterns Guide