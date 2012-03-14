module FatFreeWunderlist
	module ControllerAdditions
		
		# Send a mailer if we are creating a task
		#
		def send_mailer
			if FatFreeWunderlist.options.empty?
				logger.info "ERROR: Fat Free Wunderlist Gem: Please edit the settings in config/initializers/fat_free_wunderlist.rb in order to use this gem."
			else
				WunderlistMailer.email_task(@task, FatFreeWunderlist.options[@task.user.id]).deliver if send_mailer_now?
			end
		end
		
		private
		
			# check if it is the task#create action
			#
			def send_mailer_now?
				(params[:controller] == 'tasks' and params[:action] == 'create' and FatFreeWunderlist.options.has_key?(@task.user.id)) ? true : false
			end
			
	end
end