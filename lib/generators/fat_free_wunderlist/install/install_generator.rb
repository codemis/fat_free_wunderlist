require 'rails'

module FatFreeWunderlist
	module Generators
		class InstallGenerator < ::Rails::Generators::Base
			desc "Creates an intializer file for configuring settings in the Fat Free Wunderlist Gem."
			
			def self.source_root
				@_fat_free_wunderlist_source_root ||= File.expand_path("../templates", __FILE__)
			end
			
			# Copy the initializer file from templates to the Rails intializer directory
			#
			def copy_initializer
				copy_file "fat_free_wunderlist.rb", "config/initializers/fat_free_wunderlist.rb"
				puts "Please edit the settings in config/initializers/fat_free_wunderlist.rb."
			end
		
		end
	end
end