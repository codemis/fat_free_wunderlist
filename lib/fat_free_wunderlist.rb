require "fat_free_wunderlist/version"
require "fat_free_wunderlist/controller_additions"
require "fat_free_wunderlist/railtie" if defined? Rails && Rails::VERSION::MAJOR == 3
# require the engine if rails is defined
require 'fat_free_wunderlist/engine' if defined? Rails && Rails::VERSION::MAJOR == 3

module FatFreeWunderlist
	
	# Set options for the wunderlist email.  Here are the options:
	# wunderlist_email: The email used in wunderlist.  This is required in order for this to work.
	# wunderlist_list: The list to add the task to.  If you leave it blank,  it will add it to your inbox
	# 
	def self.options
		@options ||= {}
	end
	
end