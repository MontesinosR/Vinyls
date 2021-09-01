Rails.application.routes.draw do
  devise_for :users
  get "dashboard", to: "pages#dashboard"

  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :vinyls
end
