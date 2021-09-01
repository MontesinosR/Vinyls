Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :vinyls do
    resources :bookings, only: [:create, :index]
  end

  resources :users, only: [] do
    resources :bookings, only: :index
  end
end
