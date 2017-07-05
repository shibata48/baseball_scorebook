Rails.application.routes.draw do
  resources :innings
  resources :games
  resources :teams
  devise_for :users
  root to: 'visitors#index'
end
