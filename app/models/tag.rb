class Tag < ActiveRecord::Base
	belongs_to :runner
	belongs_to :user
end
