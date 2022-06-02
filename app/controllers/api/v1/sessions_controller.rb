class Api::V1::SessionsController < Devise::SessionsController
  respond_to :json

  private

  def respond_with(_resource, _opts = {})
    render json: {
      message: 'Successfully authenticated user',
      user: current_user
    }, status: :ok
  end

  def respond_to_on_destroy
    render json: {
      message: 'Successfully logged out user'
    }, status: :ok
  end
end
