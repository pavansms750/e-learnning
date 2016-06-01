class Course < ActiveRecord::Base
 acts_as_votable
 is_impressionable
 validates :name, presence: true
  has_many :units
  belongs_to :user
  mount_uploader :image, ImageUploader
  
  validates :name, presence: true
end
