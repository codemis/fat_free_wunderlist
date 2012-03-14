# encoding: utf-8
require 'spec_helper'

describe WunderlistMailer do

	describe "#email_task" do
		
		before(:each) do
			@task = FactoryGirl.create(:task)
			@options = {:wunderlist_email => 'johnathan@jpulos.com', :wunderlist_list => ''}
    end
  
    it "should render successfully" do
      lambda { WunderlistMailer.email_task(@task, @options) }.should_not raise_error
    end
		
	end
	
	describe "email structure" do
		
		before(:each) do
			@task = FactoryGirl.create(:task)
			@options = {:wunderlist_email => 'johnathan@jpulos.com', :wunderlist_list => 'My Unique List'}
    end

		it "sends an e-mail to wunderlist" do
			mail = WunderlistMailer.email_task(@task, @options)
			mail.to.should == ['me@wunderlist.com']
		end
		
		it "should set the subject based on the option" do
			@options[:wunderlist_list] = 'The Correct Subject'
			mail = WunderlistMailer.email_task(@task, @options)
			mail.subject.should == @options[:wunderlist_list]
		end
		
		it "should set the subject based on the option even blank" do
			@options[:wunderlist_list] = ''
			mail = WunderlistMailer.email_task(@task, @options)
			mail.subject.should == nil
		end
		
		it "should have the task name as the body" do
			mail = WunderlistMailer.email_task(@task, @options)
			mail.body.should == "*#{@task.name}"
		end
		
		it "should add an astericks if bucket is due_asap" do
			task = FactoryGirl.create(:task, {:bucket => 'due_asap', :name => 'My Test'})
			mail = WunderlistMailer.email_task(task, @options)
			mail.body.should == "*#{task.name}"
		end
		
		it "should add an astericks if bucket is due_today" do
			task = FactoryGirl.create(:task, {:bucket => 'due_today', :name => 'My Test'})
			mail = WunderlistMailer.email_task(task, @options)
			mail.body.should == "*#{task.name}"
		end
		
		it "should not add an astericks if bucket is due_tomorrow" do
			task = FactoryGirl.create(:task, {:bucket => 'due_tomorrow', :name => 'My Test'})
			mail = WunderlistMailer.email_task(task, @options)
			mail.body.should == "#{task.name}"
		end
		
	end
  
end