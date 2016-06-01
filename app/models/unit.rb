class Unit < ActiveRecord::Base
  
  belongs_to :course
  belongs_to :user
  mount_uploader :pdf, FileUploader
  mount_uploader :video, FileUploader
  
  
 
end
