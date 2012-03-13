# make sure to require mail gem
class WunderlistMailer < ActionMailer::Base
	
	# Email the task to Wunderlist and set its importance
	#
	def email_task(task, options)
		mail_options = {:to => "me@wunderlist.com"}
		mail_options[:subject] = options.has_key?(:wunderlist_list) ? options[:wunderlist_list] : ''
		mail_options[:from] = options[:wunderlist_email]
		@task = task
		@important_marker = ['due_asap', 'due_today'].include?(@task.bucket) ? '*' : ''
		mail(mail_options)
	end
	
end
