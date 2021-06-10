Rails.application.routes.draw do

  root 'tours#index'

  get 'about' => 'pages#about'

  get 'tours/new' => 'tours#new'

  resources :tours

end
