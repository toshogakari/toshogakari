# require 'rails_helper'
#
# RSpec.describe Devise::RegistrationsController, type: :controller do
#   before do
#     @request.env["devise.mapping"] = Devise.mappings[:user]
#   end
#
#   let(:expected_user) do
#     FactoryGirl.attributes_for(:expected_user)
#   end
#
#   describe "Create Users" do
#     it "returns success for created user" do
#       post :create, params: { user: expected_user }
#       expect(response).to be_success
#       expect(response.status).to be(200)
#     end
#   end
# end
