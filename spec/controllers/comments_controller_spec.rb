require 'rails_helper'

RSpec.describe CommentsController, type: :controller do
  
  describe "create" do
    describe "comment is saved" do
      it "redirects to  article" do
        user = User.create(email: "abcd@gmail.com", password: "password", password_confirmation: "password", username: "test_user", firstname: "Test", lastname: "Tester")
        sign_in user
        article = Article.create!(title: "New Test Article", body: "Body", user:user)
        post :create, params: {comment: {body: "abc"}, article_id: article.id }
        expect(response.code).to eq("302")
        expect(response).to be_redirect
        #(flash[:success]).to be_present
      end
    end 
  end 

end
