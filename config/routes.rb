Rails.application.routes.draw do

  resources :items, only: [:index, :show]
  resources :users, only: [:index, :show, :create]
  resources :collection_boards, only: [:index, :show, :create, :update, :delete]
  resources :categories, only: [:index, :show]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
