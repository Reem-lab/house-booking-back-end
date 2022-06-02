class Api::V1::RegistrationsController < Devise::RegistrationsController
  respond_to :json

  private

  def respond_with(resource, _opts = {})
    register_success && return if resource.persisted?

    register_failure(resource)
  end

  def register_success
    render json: {
      message: 'Successfully registered user',
      user: current_user
    }, status: :created
  end

  def register_failure(resource)
    render json: {
      message: 'Failed to register user',
      errors: resource.errors.full_messages
    }, status: :unprocessable_entity
  end
end
