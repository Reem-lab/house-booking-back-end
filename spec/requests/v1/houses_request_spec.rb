require 'rails_helper'

RSpec.describe 'V1::Houses', type: :request do
  before(:all) do
    @user = FactoryBot.create(:user)
    post '/v1/login', params: { user: { email: @user.email , password: @user.password } }, as: :json
    @authorization = response.header['Authorization']
    @house = FactoryBot.create_list(:house, 30)
  end
  describe 'GET /v1/houses' do
    it 'return unauthorized if user not logged in' do
      get '/v1/houses'
      expect(response).to have_http_status(:unauthorized)
    end

    it 'returns a list of houses if user is logged in' do
      get '/v1/houses', headers: { 'Authorization': @authorization }
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET /v1/houses/:id' do
    it 'returns a house if user is logged in' do
      get "/v1/houses/1", headers: { 'Authorization': @authorization }
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'POST /v1/houses' do
    it 'creates a house if user is logged in' do
      post '/v1/houses', params: { house: { address: '123 Main St', city: 'Denver', state: 'CO', zip: '80211', price: '100000', bedrooms: '3', bathrooms: '2', description: 'This is a great house', user_id: @user.id } }, headers: { 'Authorization': @authorization }
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'PUT /v1/houses/:id' do
    it 'updates a house if user is logged in' do
      put '/v1/houses/1', params: { house: { address: '123 Main St', city: 'Denver', state: 'CO', zip: '80211', price: '100000', bedrooms: '3', bathrooms: '2', description: 'This is a great house', user_id: @user.id } }, headers: { 'Authorization': @authorization }
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'DELETE /v1/houses/:id' do
    it 'deletes a house if user is logged in' do
      delete '/v1/houses/1', headers: { 'Authorization': @authorization }
      expect(response).to have_http_status(:ok)
    end
  end
end
