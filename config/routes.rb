Rails.application.routes.draw do


  resources :users, only: [:index, :show, :create]
  
  resources :categories, only: [:index, :show]

  get '/items/:id', to: 'items#show'
  get '/items', to: 'items#index'

  post '/collection_boards', to: 'collection_boards#create'
  get '/collection_boards', to: 'collection_boards#index'
  get '/collection_boards/:id', to: 'collection_boards#show'
  delete '/collection_boards/:id', to: 'collection_boards#destroy'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
