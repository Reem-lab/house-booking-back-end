require 'rails_helper'

RSpec.describe 'CurrentUsers', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/current_user/index'
      expect(response).to have_http_status(:success)
    end
  end
end
