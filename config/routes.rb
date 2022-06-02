Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :v1, defaults: { format: 'json'} do
      # resources :houses, defaults: { format: 'json' }
      get 'houses', to: 'houses#index'
  end
end
