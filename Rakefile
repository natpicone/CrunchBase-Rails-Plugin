require 'rubygems'
require 'rake'
require 'rake/rdoctask'

PKG_VERSION = "0.0.1"
PKG_NAME = "crunchbase"
PKG_FILE_NAME = "#{PKG_NAME}-#{PKG_VERSION}"

# Genereate the RDoc documentation
Rake::RDocTask.new do |rdoc|
  rdoc.rdoc_dir = 'doc'
  rdoc.title    = "CrunchBase library"
  rdoc.options << '--line-numbers' << '--inline-source' << '--main=README'
  rdoc.rdoc_files.include('README.rdoc', 'CHANGELOG')
  rdoc.rdoc_files.include('lib/**/*.rb')
  rdoc.rdoc_files.exclude('lib/tasks')
end
