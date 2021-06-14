Rails.application.routes.draw do

  root 'pages#index'


  resources :tourbases, only: %i[index new edit create update destroy]
  resources :countries, only: %i[index new edit create update destroy]
  resources :regions, only: %i[index new edit create update destroy]
  resources :cities, only: %i[index new edit create update destroy]


end
