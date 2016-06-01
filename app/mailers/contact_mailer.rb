class ContactMailer < ApplicationMailer
  #default to: "Admin <simplenet2016@gmail.com>"

  def welcome(contact)
   @contact = contact
    attachments["rails.png"] = File.read("#{Rails.root}/public/rails.png")
    mail(:to => "#{contact.name} <#{contact.email}>", :subject => "Thank U For Contact With Us", reply_to: 'simplenet2016@gmail.com' )
end
  
end
