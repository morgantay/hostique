Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :hostels, except: %i[new edit] do
    resources :rooms, only: %i[create]
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
end
