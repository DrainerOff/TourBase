Rails.application.routes.draw do

  root 'pages#index'

  get 'about' => 'pages#about'
  get 'tourbase/new' => 'tourbases#new'

  resources :tourbases
  resources :countries
  resources :regions
  resources :cities


end
