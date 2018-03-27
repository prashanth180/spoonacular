$:.push File.expand_path('../lib', __FILE__)
require 'spoonacular/version'

Gem::Specification.new do |s|
  s.name = 'spoonacular'
  s.version = Spoonacular::VERSION
  s.date = '2018-03-27'
  s.summary = "Spoonacular-gem"
  s.description = "gem for the Spoonacular API"
  s.authors = ["Daniel Woznicki, Karamat Ullah"]
  s.email = 'daniel.woznicki@gmail.com,karamatullah46@gmail.com'
  s.files = Dir["lib/**/*"]
  s.homepage = 'http://rubygems.org/gems/spoonacular'
  s.license = 'MIT'

  s.add_runtime_dependency 'unirest', '~> 1.1', '>= 1.1.2'
end
