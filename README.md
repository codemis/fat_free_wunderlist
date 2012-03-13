# Fat Free Wunderlist

This gem can only be used on an existing [Fat Free CRM](http://www.fatfreecrm.com/) application.  When you add tasks to Fat Free CRM,  this gem will add the task to your existing [Wunderlist](http://www.wunderlist.com/) account. It uses Action Mailer to send an email to me@wunderlist.com, which then adds it to your todo lists.  For more information about this approach,  please check out this [blog post](http://blog.wunderlist.com/post/6521016265/secret-features-part-3-add-tasks-via-mail). Since it is using this approach,  you will need to manage the tasks in your Wunderlist account.  This gem will only add any new tasks to Wunderlist.  If you delete a task in Fat Free CRM,  the task will still remain in your Wunderlist account.

Any tasks marked due as "As Soon As Possible" or "Today" will be flagged as important in your Wunderlist account.

## Requirements

	* Ruby 1.9.2 or later.
	* Rails 3.0 or later.
	* Fat Free CRM 10.0  or later.

## Installation

Note: Before installing,  please make sure you setup Action Mailer in your Fat Free CRM application.  You can find more information at [RailsCast.com](http://railscasts.com/episodes/206-action-mailer-in-rails-3).

Add the gem to your Gemfile and run the `bundle` command to install it.

```ruby
gem "fat_free_crm"
```

Run the generator for Fat Free Wunderlist:

```ruby
rails generate fat_free_wunderlist:install
```

Now change the settings in config/initializers/fat\_free\_wunderlist.rb file that was generated.

	* wunderlist_email - the email address used on your Wunderlist account **Required**
	* wunderlist_list - the list you want to add all tasks to.  If you leave it empty,  it will be delivered in your inbox

## Development
Questions or problems? Please post them on the [issue tracker](). You can contribute changes by forking the project and submitting a pull request. You can ensure the tests passing by running `bundle` and `rake`.

This gem is created by Johnathan Pulos and is under the MIT License.