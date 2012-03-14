class Task < ActiveRecord::Base
	belongs_to  :asset, :polymorphic => true
end