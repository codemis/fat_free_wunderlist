class Contact < ActiveRecord::Base
	has_many :tasks, :as => :asset
end