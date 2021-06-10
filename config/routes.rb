Rails.application.routes.draw do

  root 'pages#index'

  get 'about' => 'pages#about'

  get 'tours/new' => 'tours#new'

  get 'tours/index' => 'tours#index'

  get 'countries/index' => 'countries#index'

  get 'regions/index' => 'regions#index'

  get 'cities/index' => 'cities#index'

  resources :tours
  resources :countries
  resources :regions
  resources :cities

end
