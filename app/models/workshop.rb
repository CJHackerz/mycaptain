class Workshop < ActiveRecord::Base
  belongs_to :admin
  has_many :admins
  has_many :users
  has_many :posts
  has_many :contributions
  has_many :forum_threads

  has_attached_file :cover, styles: { medium: "800x300#", thumb: "300x300#" }, default_url: "missing_cover.png"
  validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/

  validates :content, presence: true
  validates :title, presence: true
end
