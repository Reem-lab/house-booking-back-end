Rails.application.routes.draw do
  resources :reservations, only: [:index, :show, :create, :destroy]
end
