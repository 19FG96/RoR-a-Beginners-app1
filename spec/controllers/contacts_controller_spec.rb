require 'rails_helper'

RSpec.describe ContactsController, type: :controller do
  
  context "invalid params" do
    it "redirects to" do
      post :create, {params: {contact:{name: nil, email: "fgolubicek@utlook.com", message: "a message" } }}
      expect(response.code).to eq("302")
      expect(response).to be_redirect
    end 
    
    it "test message" do
      post :create, {params: {contact:{name: nil, email: "fgolubicek@utlook.com", message: "a message" } }}
      expect(flash[:danger]).to eq("Opps, there was a problem! Please fill out all the fields.")
    end 
    
  end 

end


