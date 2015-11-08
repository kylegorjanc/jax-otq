class Runner < ActiveRecord::Base
	has_many :comment
	has_many :tag
	belongs_to :user
	validates :first_name, :last_name
end
