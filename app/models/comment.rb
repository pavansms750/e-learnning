class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :question
   mount_uploader :attachment, AttachmentUploader
end
