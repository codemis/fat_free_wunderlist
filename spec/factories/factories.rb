FactoryGirl.define do
	factory :task do
		name "A New Task"
		bucket 'due_asap'
		asset_type ''
	end
  
	factory :contact do
		name 'My Special Name'
	end
end