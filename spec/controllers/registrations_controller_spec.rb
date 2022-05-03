require 'rails_helper'

RSpec.describe RegistrationsController, type: :controller do
  
  
  describe RegistrationsController do
    describe 'create' do
    
      { user:
        { email: 'blaz1988@gmail.com',
          name: 'Ivan',
          lastname: 'Blazevic',
          password: 'test123456',
          adress: 'Jelkovecka 1b'
        }
      }
    end

    it 'create a new user' do
      expect(User.count).to be(1)
    end
  end
end


