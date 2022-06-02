Rails.application.routes.draw do
  resources :reservations, only: [:index, :show]
end
