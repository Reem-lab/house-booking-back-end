require 'rails_helper'

RSpec.describe 'V1::Reservations', type: :request do
  before(:all) do
    @user = FactoryBot.create(:user)
    post '/v1/login', params: { user: { email: @user.email, password: @user.password } }, as: :json
    @authorization = response.header['Authorization']
    @house = FactoryBot.create(:house)
  end

  describe 'POST /v1/reservations' do
    it 'creates a new reservation' do
      post '/v1/reservations', params: {
        reservation: {
          user_id: @user.id,
          room_id: @house.id,
          start_date: '2020-07-01',
          end_date: '2020-07-02'
        }
      }, headers: { Authorization: @authorization }
      expect(response).to have_http_status(:ok)
    end

    it 'returns an error if the user is not logged in' do
      post '/v1/reservations', params: {
        reservation: {
          user_id: @user.id,
          room_id: @house.id,
          start_date: '2020-07-01',
          end_date: '2020-07-02'
        }
      }
      expect(response).to have_http_status(:unauthorized)
    end
  end

  describe 'GET /v1/reservations' do
    it 'returns all reservations' do
      get '/v1/reservations', headers: { Authorization: @authorization }
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET /v1/reservations/:id' do
    it 'returns a reservation' do
      get '/v1/reservations/1', headers: { Authorization: @authorization }
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'PUT /v1/reservations/:id' do
    it 'updates a reservation' do
      put '/v1/reservations/1', params: {
        reservation: {
          user_id: @user.id,
          room_id: @house.id,
          start_date: '2020-07-01',
          end_date: '2020-07-02'
        }
      }, headers: { Authorization: @authorization }
      expect(response).to have_http_status(:ok)
    end
  end
end
