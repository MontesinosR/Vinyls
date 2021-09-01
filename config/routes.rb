Rails.application.routes.draw do
  devise_for :users
  get "users/:id/dashboard", to: "pages#dashboard"

  root to: 'pages#home'
  resources :vinyls, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :vinyls

end
