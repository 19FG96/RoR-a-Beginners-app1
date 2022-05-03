require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  
  describe "index" do
    context "current_user" do
      
      it "redirect_to articles" do
        get :index
        expect(response.code).to eq("200")
      end 
    end 
  end 
  
  describe "contact" do
    it "assigns" do
      get :contact
      expect(assigns(:contact))
    end 
  end 

end
