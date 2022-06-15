Rails.application.routes.draw do
  get '/v1/current_user', to: 'v1/users/current_user#index'

  devise_for :users, path: '', path_names: {
    sign_in: 'v1/login',
    sign_out: 'v1/logout',
    registration: 'v1/signup'
  },
  controllers: {
    sessions: 'v1/users/sessions',
    registrations: 'v1/users/registrations'
  }

  namespace :v1, defaults: { format: 'json' } do
    resources :houses
    resources :reservations
  end
end
