Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :vinyls

  resources :users do
    resources :bookings, only: [:create, :index]
  end
end
