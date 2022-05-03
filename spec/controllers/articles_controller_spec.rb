require 'rails_helper'


RSpec.describe ArticlesController, type: :controller do
  
  describe "index" do
  
  before do
    user = User.create(:email => "email", 
        :password => "password", 
        :password_confirmation => "password_confirmation",
        :username => "username", 
        :firstname => "firstname",
        :lastname => "lastname")
        puts user
    sign_in(user, scope: :users)
    
  end 
    
    it "renders index template" do
      get :index
      puts response.redirect_url
      expect(response.code).to  eq("302")
    end 
  end 
  
  describe "new" do
    it "creates a new article" do
      post :new 
    expect(response.code).to eq ("302")
    end 
  end 
  
  describe "create" do
    it "creates articles " do
      post :create
      expect(response.code).to eq("302")
    end 
  end 
  
  
  
  
  # make a get request
  # make a post request
  # check the response body and/or status

end
