class Contribution < ActiveRecord::Base
  belongs_to :workshop
  belongs_to :user
end
