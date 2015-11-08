class User < ActiveRecord::Base
	has_many :runners
	validates FILL_IN, presence: true
  	validates FILL_IN, presence: true
end
