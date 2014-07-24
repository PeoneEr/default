require 'capistrano/bundler'
require 'capistrano/deploy'
require 'capistrano/rails'
require 'capistrano/rvm'
require 'capistrano/setup'


set :rvm_type, :user
set :rvm_ruby_version, '2.0.0-p481'

Dir.glob('lib/capistrano/tasks/*.cap').each { |r| import r }
