require 'rubygems'
require 'rails'
require 'fat_free_wunderlist'
require 'bundler'

Bundler.require :default, :development

Combustion.initialize!
require 'rspec/rails'

ActionMailer::Base.delivery_method = :test
