require 'rails_helper'

RSpec.describe "Contacts", type: :request do
	describe "Contacts controller request specs\n" do
    context 'POST #create' do
      it 'create a new contact' do
        params = {"first_name"=>"a",
                  "last_name"=>"thakur",
                  "email"=>"a.thakur73.at@gmail.com",
                  "phone"=>"+91-8982327040",
                  "message"=>"test"
                }
        expect { post('/contacts', params: { contact: params }) }.to change(Contact, :count).by(1)
      end
    end
  end
end
