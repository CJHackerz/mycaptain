class Response < ActiveRecord::Base
  belongs_to :forum_thread
  belongs_to :user
  belongs_to :admin
end
