class Post < ActiveRecord::Base
  belongs_to :admin
  belongs_to :workshop

  has_many :embedurls
  accepts_nested_attributes_for :embedurls, reject_if: :all_blank, allow_destroy: true

  has_attached_file :cover, styles: { medium: "800x300#", thumb: "300x300#" }, default_url: "missing_cover.png"
  validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/

  has_many :stuffs
  accepts_nested_attributes_for :stuffs, reject_if: :all_blank, allow_destroy: true
end
