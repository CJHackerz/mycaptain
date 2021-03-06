class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :workshop
  has_many :workshops
  has_many :posts
  has_many :responses

  has_attached_file :avatar, styles: { medium: "500x500#", thumb: "300x300#" }, default_url: "missing_avatar.jpg"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  has_many :comments

  validates :name, presence: true
  validates :workshop, presence: true
end
