# The key for each setting is the User.id from Fat Free CRM
# wunderlist_email - the email address used on your Wunderlist account **Required**
# wunderlist_list - the list you want to add all tasks to.  If you leave it empty,  it will be delivered in your inbox
FatFreeWunderlist.options.merge!(
	1 => {
		:wunderlist_email => '',
		:wunderlist_list	=>	''
	}
)