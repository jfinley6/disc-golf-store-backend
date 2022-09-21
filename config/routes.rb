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
end
