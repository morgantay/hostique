Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get '/profile', to: 'pages#profile'

  resources :hostels, except: :new do
    resources :rooms, only: :create
    resources :reviews, only: :create
    resources :amenity_tags, only: :create
  end

  resources :rooms, only: %i[update destroy] do
    resources :reservations, only: :create
  end

  resources :amenity_tags, only: :destroy

  resources :reservations, only: %i[update destroy]
end
