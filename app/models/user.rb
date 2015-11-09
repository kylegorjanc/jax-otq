class User < ActiveRecord::Base
	has_many :runners
	validates :name, presence: true
  	validates :email, presence: true
end
