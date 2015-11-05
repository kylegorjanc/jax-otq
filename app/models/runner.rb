class Runner < ActiveRecord::Base
	has_many :comment
	has_many :tag


end
