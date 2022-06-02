Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, defaults: { format: :json }, path: '', path_names: {
    sign_in: 'api/v1/login',
    sign_out: 'api/v1/logout',
    registration: 'api/v1/signup'
  },
    controllers: { 
      sessions: 'api/v1/sessions',
      registrations: 'api/v1/registrations' 
    }

    namespace :api, defaults: { format: :json } do
      namespace :v1 do
        get '/active_user', to: 'authentication#active_user'
      end
    end
end
