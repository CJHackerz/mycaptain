class Workshop < ActiveRecord::Base
  belongs_to :admin
  has_many :users
  has_many :posts

  has_attached_file :cover, styles: { medium: "800x300#", thumb: "300x300#" }, default_url: "missing_cover.png"
  validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/
end
