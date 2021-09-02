Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :vinyls do
    # collection do
     # patch :vinyl
    # end
    resources :bookings, only: [:create, :index, :update]
  end

  resources :users, only: [] do
    resources :bookings, only: :index
  end
end
