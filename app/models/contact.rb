class Contact < ActiveRecord::Base
validates :name, presence: true
validates :email, presence: true
validates :subject, presence: true
validates :email, email_format: { message: "doesn't look like an email address" }
#validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
