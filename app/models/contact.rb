class Contact < ApplicationRecord
  # Validations
  validates_presence_of :first_name, :last_name, :message
end
