Rails.application.routes.draw do
  root to: "pages#home"
  resources :hostels, only: %i[index show new create update destroy] do
    resources :rooms, only: %i[create]
  end
  resources :rooms, only: %i[update destroy] do
    resources :reservations, only: %i[create]
  end
  resources :users, only: %i[new create destroy]
  resources :reservations, only: %i[index update destroy]
end
