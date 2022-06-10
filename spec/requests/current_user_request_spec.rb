require 'rails_helper'

RSpec.describe 'CurrentUsers', type: :request do
  before(:all) do
    @user = FactoryBot.create(:user)
    post '/v1/login', params: { user: { email: @user.email, password: @user.password } }, as: :json
    @authorization = response.header['Authorization']
  end
  describe 'GET /v1/current_user' do
    it 'returns the current user' do
      get '/v1/current_user', headers: { Authorization: @authorization }
      expect(response).to have_http_status(:ok)
    end

    it 'returns an error if the user is not logged in' do
      get '/v1/current_user'
      expect(response).to have_http_status(:unauthorized)
    end
  end
end
