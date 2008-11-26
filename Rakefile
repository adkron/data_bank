# Rakefile
require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('data_bank', '0.2.0') do |p|
  p.description    = 'Marshal data to be loaded on sequential runs of your script.'
  p.url            = 'http://github.com/Adkron/databank'
  p.author         = 'Amos King'
  p.email          = 'amos.l.king@gmail.com'
  p.ignore_pattern = ['tmp/*', 'script/*', 'example.rb']
  p.development_dependencies = []
end

Dir['#{File.dirname(__FILE__)}/tasks/*.rake'].sort.each