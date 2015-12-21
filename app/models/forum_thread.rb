class ForumThread < ActiveRecord::Base
	belongs_to :workshop
	belongs_to :user
	has_many :responses
end
