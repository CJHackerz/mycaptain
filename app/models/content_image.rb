class ContentImage < ActiveRecord::Base
  belongs_to :post

  has_attached_file :image, styles: { medium: "500x300#", thumb: "200x200#" }, default_url: "missing_content_image.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
