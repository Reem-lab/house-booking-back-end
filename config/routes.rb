Rails.application.routes.draw do
  namespace :v1, defaults: { format: 'json' } do
    resources :houses
    resources :reservations, only: [:index, :show, :create, :destroy]
  end
end
