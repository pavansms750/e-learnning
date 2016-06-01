class DevelopmentMailInterceptor
  def self.delivering_email(contact)
    contact.subject = "#{contact.to} #{contact.subject}"
   contact.to = "simplenet2016@gmail.com"
  end
end