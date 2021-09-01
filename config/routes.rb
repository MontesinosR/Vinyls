Rails.application.routes.draw do
  devise_for :users
  get "dashboard", to: "pages#dashboard"

  root to: 'pages#home'

  resources :vinyls

  resources :bookings, only: [:create]
  
end
