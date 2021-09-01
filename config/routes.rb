Rails.application.routes.draw do
  devise_for :users
  get "dashboard", to: "pages#dashboard"

  root to: 'pages#home'

  resources :vinyls

  resources :user do
    resources :bookings, only: [:create]
  end
end
