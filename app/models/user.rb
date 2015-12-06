class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :workshop

  has_attached_file :avatar, styles: { medium: "500x500#", thumb: "300x300#" }, default_url: "missing_avatar.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  
end
