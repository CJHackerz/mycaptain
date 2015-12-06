class Workshop < ActiveRecord::Base
  belongs_to :admin
  has_many :users
  has_many :posts
end
