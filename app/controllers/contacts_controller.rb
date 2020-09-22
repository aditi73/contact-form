class ContactsController < ApplicationController

  def create
    # Create contact
    contact = Contact.new(contact_params)
    if contact.save
      # Send email on successfull creation
      ContactMailer.contact_detail_email(contact).deliver_now
      render json: {contact: contact, message: I18n.t("message.success", entity: "Contact")}, status: I18n.t('status.success')
    else
      render json: {message: contact.errors.messages}, status: I18n.t('status.unprocessable_entity')
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :phone, :message)
  end
end
