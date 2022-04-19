class ContactMailer < ActionMailer::Base
  default to: "info@chesnovitz.com"
  
  def contact_email(name, email, message)
    @name = name
    @eamil = email
    @message = message
    
    
  mail(from: email, subject: 'Chesnowtiz.com Contact form Message')
  end 
  
end 