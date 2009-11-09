require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name        = "veracious"
    gemspec.summary     = "Client side validation of Active Resource objects"
    gemspec.description = "Gee… it sure would be awesome if ActiveResource actually allowed us" +
                          "to do client-side validation of our ActiveResource objects like their" + 
                          "documentation promises: http://apidock.com/rails/ActiveResource/Base"
    gemspec.email       = "moonmaster9000@gmail.com"
    gemspec.files       = FileList['lib/**/*.rb', 'README.rdoc']
    gemspec.homepage    = "http://github.com/moonmaster9000/veracious"
    gemspec.authors     = ["Matt Parker"]
    gemspec.add_dependency('rails', '>= 2.3.3')
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end
