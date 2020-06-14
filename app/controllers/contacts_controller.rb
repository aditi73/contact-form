class ContactsController < ApplicationController
	def create
		contact = Contact.new(contact_params)
		if contact.save
			ContactMailer.contact_detail_email(contact).deliver_now
			render json: {status: :success, contact: contact, message: "Created contact successfully"}
		else
			render json: {status: :success, contact: [], message: "Failed to create contact"}
		end
	end

	private

	def contact_params
		params.require(:contact).permit(:first_name, :last_name, :email, :phone, :message)
	end
end
