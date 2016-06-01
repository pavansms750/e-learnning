class Profile < ActiveRecord::Base
  belongs_to :user, inverse_of: :profile
  mount_uploader :image, AvatarUploader
  mount_uploader :cover, AvatarUploader
   
  
     
end
