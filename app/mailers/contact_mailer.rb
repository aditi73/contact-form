class ContactMailer < ApplicationMailer
  default from: 'notifications@example.com'
 
  def welcome_email(contact)
  	@contact = contact
    mail(to: "info@ajackus.com", subject: 'Contact Information Details')
  end
end
