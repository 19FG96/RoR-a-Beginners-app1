require 'rails_helper'

RSpec.describe IndexController, type: :controller do
  
  test "index action should be success" do
    user = User.create(email: "abcd@gmail.com", password: "password", password_confirmation: "password", username: "test_user", firstname: "Test", lastname: "Tester")
    sign_in user
    get :index
    assert_response :success
  end 

end
