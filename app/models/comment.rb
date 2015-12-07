class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :admin
  belongs_to :post
end
