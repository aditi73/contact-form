class Contact < ApplicationRecord
	validates_presence_of :first_name, :last_name, :message
end
