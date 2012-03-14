# Fat Free Wunderlist

**This gem can only be used on an existing [Fat Free CRM](http://www.fatfreecrm.com/) application**

Using an after_filter on the Task controller,  this gem will send your task to your existing Wunderlist account.  It sends the task using Action Mailer (email) directly to your Wunderlist inbox or a specific list.  Wunderlist allows posting tasks through emails, and the process is described on this [blog post](http://blog.wunderlist.com/post/6521016265/secret-features-part-3-add-tasks-via-mail).  

# Features

	* Important Tasks - Tasks marked due as "As Soon As Possible" or "Today" will be flagged as important in your Wunderlist inbox/list.
	* Post to a List - Just supply the list in the initializer file, and all tasks will be added to that list.
	* Flags Assets -  If the task involves an account, contact, opportunity, etc,  then the asset name and type is added to the Wunderlist inbox/list.

## Limitations

Since we are using the email approach,  you will not be able to update or delete tasks in your Wunderlist account through your Fat Free CRM.  You will need to manage them in your Wunderlist account.  Also,  this gem only supports one Wunderlist account and list per user.

## Requirements

	* Ruby 1.9.2 or later.
	* Rails 3.0 or later.
	* Fat Free CRM 10.0  or later.
	* A Wunderlist Account

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

## Links

- [Fat Free CRM](http://www.fatfreecrm.com/)
- [Wunderlist](http://www.wunderlist.com/)

## Development

Questions or problems? Please post them on the [issue tracker](https://github.com/codemis/fat_free_wunderlist/issues). You can contribute changes by forking the project and submitting a pull request. You can ensure the tests passing by running `bundle` and `rake`.

This gem is created by Johnathan Pulos and is under the MIT License.