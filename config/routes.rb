Rails.application.routes.draw do
  root 'pages#home'

  resources :users, only: [:index] do
    post :impersonate, on: :member
    post :stop_impersonating, on: :collection
  end

  devise_for :users
end
