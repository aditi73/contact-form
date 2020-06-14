require 'rails_helper'

RSpec.describe Contact, type: :model do
	it 'validates presence' do
    record = Contact.new
    record.first_name = '' # invalid state
    record.valid? # run validations
    expect(record.errors[:first_name]).to include("can't be blank") # check for presence of error

    record.last_name = '' # invalid state
    record.valid? # run validations
    expect(record.errors[:last_name]).to include("can't be blank") # check for presence of error

    record.message = '' # invalid state
    record.valid? # run validations
    expect(record.errors[:message]).to include("can't be blank") # check for presence of error
  end
end
