Rails.application.routes.draw do
  resources :discs
  resources :comments
  resources :posts
  resources :sessions, only: [:create]
  resources :registrations
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  root to: "static#home"
  patch '/picture/:id', to: 'registrations#picture'

  get 'home_page', to: 'discs#home_page_discs'
  get 'manufacturers', to: 'discs#manufacturers'
  get '/category/:category_slug/:page', to: 'discs#all_discs_category'
  get '/all/:page', to: 'discs#all_discs'
  get 'sort/:category_slug/:sort/:page', to: 'discs#sorted_discs'

  get :shopping_cart, to: "sessions#shopping_cart"

  post 'new/:user_id/:disc_id', to: "shopping_cart#new"
end
