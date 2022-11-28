Rails.application.routes.draw do
  root to: "pages#home"

  resources :hostels, except: :edit do
    resources :rooms, only: %i[new create]
    resources :reviews, only: %i[create]
    resources :wishlist_tags, only: %i[create]
    resources :amenity_tags, only: %i[create]
  end

  resources :rooms, only: %i[update destroy] do
    resources :reservations, only: %i[create]
  end

  resources :amenity_tags, only: :destroy

  resources :wishlists, only: %i[show create update destroy]

  resources :reservations, only: %i[update destroy]

  resources :wishlist_tags, only: %i[destroy]

  get '/profile', to: 'users#profile', as: "profile"
end
