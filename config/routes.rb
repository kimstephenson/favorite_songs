Rails.application.routes.draw do
  resources :songs, only: [:index]

  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create, :destroy]

  root to: "songs#index"
end
