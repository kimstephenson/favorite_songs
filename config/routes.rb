Rails.application.routes.draw do
  resources :songs, only: [:index]

  root to: "songs#index"
end
