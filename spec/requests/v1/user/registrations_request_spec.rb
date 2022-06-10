require 'rails_helper'

RSpec.describe Users::RegistrationsController, type: :request do
  describe 'POST v1/signup' do
    it 'creates a new user' do
      post '/v1/signup', params: { user: { username: 'test', email: 'aaaa@test.com', password: '123456', password_confirmation: '123456' } }, as: :json
      expect(response).to have_http_status(:ok)
    end
  end
end
