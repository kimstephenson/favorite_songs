Rails.application.routes.draw do
  resources :songs, only: [:index]

  resources :users, only: [:new, :create]

  root to: "songs#index"
end
