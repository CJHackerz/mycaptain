class Post < ActiveRecord::Base
  belongs_to :admin
  belongs_to :workshop

  has_many :embedurls
  accepts_nested_attributes_for :embedurls, reject_if: :all_blank, allow_destroy: true
end
