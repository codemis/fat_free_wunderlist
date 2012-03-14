require 'rubygems'
require 'rails'
require 'fat_free_wunderlist'
require 'bundler'
require 'factory_girl'

Bundler.require :default, :development

Combustion.initialize!

require 'rspec/rails'
FactoryGirl.definition_file_paths << File.join(File.dirname(__FILE__), 'factories')
FactoryGirl.find_definitions

ActionMailer::Base.delivery_method = :test