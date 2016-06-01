class UserMailer < ApplicationMailer
  
  def welcome(user)
   @user = user
    #attachments["rails.png"] = File.read("#{Rails.root}/public/images/rails.png")
    mail(:to => "#{user.name} <#{user.email}>", :subject => "Request From A User")
   end
  
end
