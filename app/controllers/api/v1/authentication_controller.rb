class Api::V1::AuthenticationController < ApplicationController
  before_action :authenticate_user!

  def active_user
    @user = user_from_token
    render json: {
      message: 'If you see this you are logged in',
      user: @user
    }
  end

  private

  def user_from_token
    jwt_payload = JWT.decode(request.headers['Authorization'].split[1],
                             Rails.application.credentials.devise[:jwt_secret_key]).first
    User.find(jwt_payload['sub'])
  end
end
