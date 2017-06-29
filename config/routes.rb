Rails.application.routes.draw do
  resources :innings
  resources :results
  resources :games
  resources :teams
  devise_for :users
  root to: 'visitors#index'
end
