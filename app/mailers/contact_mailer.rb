class ContactMailer < ApplicationMailer
  default from: 'notifications@example.com'
 
  def contact_detail_email(contact)
  	@contact = contact
	@contact_fields = ['first_name', 'last_name', 'email', 'phone', 'message']
    mail(to: "info@ajackus.com", subject: 'Contact Information Details')
  end
end
