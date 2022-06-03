require 'rails_helper'

RSpec.describe 'V1::Reservations', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/v1/reservations/index'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /show' do
    it 'returns http success' do
      get '/v1/reservations/show'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /create' do
    it 'returns http success' do
      get '/v1/reservations/create'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /destroy' do
    it 'returns http success' do
      get '/v1/reservations/destroy'
      expect(response).to have_http_status(:success)
    end
  end
end
